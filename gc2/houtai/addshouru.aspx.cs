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
using System.IO;

public partial class Bedrock_tijiao : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        

        if (!IsPostBack)
        {
            int _i = 0;
            DateTime dt = DateTime.Now;
            string id = Request.QueryString["id"];
            if (int.TryParse(id, out _i))
            {
                SqlConnection strcon = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strconn"]);
                string sql1 = "select * from shouru where id=" + _i + "";
                strcon.Open();
                SqlCommand com1 = new SqlCommand(sql1, strcon);
                SqlDataReader dr1 = com1.ExecuteReader();
                if (dr1.Read())
                {

                    DropDownList1.SelectedValue = dr1["laiyuan"].ToString();
                    this.sm.Text = dr1["sm"].ToString();
                    shu.Text = dr1["fei"].ToString();
                    if (DateTime.TryParse(dr1["shijian"].ToString(), out dt))
                    {
                        this.shijian.SelectedDate = Convert.ToDateTime(dr1["shijian"]);
                    }
                    Button1.Text = "修改";
                }

            }




        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Button1.Text == "修改")
        {
            string id = Request.QueryString["id"];
            int fei = Convert.ToInt32(shu.Text.ToString());
            string laiyuan = DropDownList1.SelectedValue;

            string sm = this.sm.Text.ToString();


            string shijian = this.shijian.SelectedDate.ToShortDateString();


            string Username = Convert.ToString(Session["username"]);

            SqlConnection strcon = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strconn"]);
            strcon.Open();
            SqlCommand scd = new SqlCommand(@"UPDATE [shouru] 
   SET [laiyuan] = '"+laiyuan+"'       ,[shijian] ='"+shijian+"'      ,[Username] = '"+Username+"'      ,[sm] = '"+sm+"'      ,[fei] = '"+fei+"' WHERE id="+id+"", strcon);
            scd.ExecuteNonQuery();
            Response.Write("<script language=javascript>alert('修改成功');location='shouru.aspx'</script>");
            strcon.Close();

        }
        else
        {


            int fei = Convert.ToInt32(shu.Text.ToString());
            string laiyuan = DropDownList1.SelectedValue;

            string sm = this.sm.Text.ToString();


            string shijian = this.shijian.SelectedDate.ToShortDateString();


            string Username = Convert.ToString(Session["username"]);

            SqlConnection strcon = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strconn"]);
            strcon.Open();
            SqlCommand scd = new SqlCommand("insert into shouru(laiyuan,shijian,Username,sm,fei)values('" + laiyuan + "','" + shijian + "','" + Username + "','" + sm + "','" + fei + "')", strcon);
            scd.ExecuteNonQuery();
            Response.Write("<script language=javascript>alert('您已经添加成功');location='tijiao.aspx'</script>");
            strcon.Close();
        }
    }




}
