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
using System.Data.SqlClient;
public partial class admin_pass : System.Web.UI.Page
{

   string js = @"<Script language='JavaScript'>
                    alert('{0}');  
                  </Script>";
    
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["user"] == null)
        {
           
        }
    }
    
    protected void Button1_Click(object sender, EventArgs e)
    {
         SqlCommand com = new  SqlCommand();
         SqlConnection con = new  SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        com.Connection = con;
        con.Open();
        com.CommandText = "select Password from [User]";
        string pass = com.ExecuteScalar().ToString();
        
         if (pass == TextBox1.Text)
        {
            com.CommandText = "update    [User]  set [Password]='" + TextBox2.Text.Trim() + "' where ID=1";

            try
            {
                com.ExecuteNonQuery();
                con.Close();
                HttpContext.Current.Response.Write(string.Format(js, "修改成功！"));
              　
            }
            catch
            {
                con.Close();
                HttpContext.Current.Response.Write(string.Format(js, "修改失败！"));
            }
        }
        else
        {
            HttpContext.Current.Response.Write(string.Format(js, "原密码错误！"));
        }
    }
}
