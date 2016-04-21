using ASP;
using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.IO;
using System.Data.SqlClient;


public partial class admin_Default : System.Web.UI.Page
{

    string js = @"<Script language='JavaScript'>
                    alert('{0}');  
                  </Script>";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            Response.Cookies["user"].Expires = DateTime.Now.AddDays(-1);//将这个Cookie过期掉. 

            Response.Cookies.Add(new HttpCookie("CheckCode", ""));
        }

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Request.Cookies["CheckCode"] == null)
        {

            HttpContext.Current.Response.Write(string.Format(js, "您的浏览器设置已被禁用 Cookies，您必须设置浏览器允许使用 Cookies 选项后才能使用本系统。"));
            return;
        }
        if (String.Compare(Request.Cookies["CheckCode"].Value, TextBox3.Text.ToString().Trim(), true) != 0)
        {

            HttpContext.Current.Response.Write(string.Format(js, "对不起,验证码错误！"));
            return;
        }
        else
        {
            string pass = TextBox2.Text.Trim();
            string lei = this.lei.Text.Trim();
            string name = TextBox1.Text.Trim();
            SqlCommand com = new SqlCommand();
            SqlCommand com2 = new SqlCommand();
            SqlCommand com3 = new SqlCommand();
            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
            com.Connection = con;
            com2.Connection = con;
            com3.Connection = con;
            con.Open();

            com2.CommandText = "select * from [yg]";
            SqlDataReader dr2 = com2.ExecuteReader();
            while (dr2.Read())
            {

                if ((dr2["Password"].ToString() == pass & dr2["UserName"].ToString() == name & dr2["lei"].ToString() == lei))
                {

                    dr2.Close();
                    con.Close();
                    Session["UserName"] = name;
                    Response.Cookies["user"].Value = TextBox1.Text.Trim();
                    Response.Redirect("HTMLPage3.htm");

                }


            }

            dr2.Close();

            com3.CommandText = "select * from [user]";
            SqlDataReader dr3 = com3.ExecuteReader();
            while (dr3.Read())
            {

                if ((dr3["Password"].ToString() == pass & dr3["Name"].ToString() == name))
                {

                    dr3.Close();
                    con.Close();
                    Session["UserName"] = name;
                    Response.Cookies["user"].Value = TextBox1.Text.Trim();
                    Response.Redirect("HTMLPage2.htm");

                }


            }

            dr3.Close();
            con.Close();
            HttpContext.Current.Response.Write(string.Format(js, "用户名或密码错误！"));
        }
    }
}
