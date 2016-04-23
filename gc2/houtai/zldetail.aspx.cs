using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class houtai_zldetail : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            string conn = ConfigurationManager.AppSettings["Connection"];
            SqlCommand com = new SqlCommand();
            SqlConnection con = new SqlConnection(conn);
            com.Connection = con;
            con.Open();
            com.CommandText = "select * from zl where ID=" + Request.QueryString["id"].ToString();
            SqlDataReader dr = com.ExecuteReader();
            while (dr.Read())
            {
                ming.Text = dr["ming"].ToString();

                zijin.Text = dr["zijin"].ToString();
                kaishi.Text = dr["kaishi"].ToString();
                jieshu.Text = dr["jieshu"].ToString();
                branch.Text = dr["branch"].ToString();
            }
            dr.Close();
            con.Close();
        }
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Write("<script language=javascript> 　document.location='zl.aspx'; </script>");

    }
}