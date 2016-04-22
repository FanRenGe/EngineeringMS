using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class houtai_zudetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {


            if (Request["id"] != null)
            {
                int id = Convert.ToInt32(Request["id"].ToString());
                SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
                con1.Open();
                string sql1 = "select * from zu where id=" + id + "";
                SqlCommand com1 = new SqlCommand(sql1, con1);
                SqlDataReader dr1 = com1.ExecuteReader();
                if (dr1.Read())
                {

                    ming.Text = dr1["ming"].ToString();
                    shu.Text = dr1["shu"].ToString();
                    zuzhang.Text = dr1["zuzhang"].ToString();



                }
                con1.Close();
            }

        }
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("zuxs.aspx");
    }
}