using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class houtai_ygdetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
           
            if (Request["Employeeid"] != null)
            {
                int Employeeid = Convert.ToInt32(Request["Employeeid"].ToString());
                SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
                con1.Open();
                string sql1 = "select * from yg where Employeeid=" + Employeeid + "";
                SqlCommand com1 = new SqlCommand(sql1, con1);
                SqlDataReader dr1 = com1.ExecuteReader();
                if (dr1.Read())
                {

                    username.Text = dr1["username"].ToString();
                    dh.Text = dr1["dh"].ToString();
                    hao.Text = dr1["hao"].ToString();
                    qq.Text = dr1["qq"].ToString();
                    zu.Text = dr1["zu"].ToString();
                    xingbie.Text = dr1["xingbie"].ToString();
                    jibie.Text = dr1["jibie"].ToString();

                }
                con1.Close();
            }

        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("yg.aspx");
    }
}