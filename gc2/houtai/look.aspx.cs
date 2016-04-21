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
public partial class ax_look : System.Web.UI.Page
{
   string sql = ConfigurationManager.AppSettings["Connection"];

  
    protected void Page_Load(object sender, EventArgs e)
    {
     
        if (!this.IsPostBack)
        {
            if (Request.QueryString["id"] != null)
            {
			
                bind();
            }
        }

    }
    private void bind()
    {
        
       
		
        SqlCommand com = new SqlCommand();
         SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        com.Connection = con;
        con.Open();
         com.CommandText =  "select * from yusuan where id=" + Request.QueryString["id"].ToString();

        SqlDataReader dr = com.ExecuteReader();
        while (dr.Read())
        {
            Username.Text = dr["Username"].ToString();
			yusuan.Text = dr["yusuan"].ToString();
			fei.Text = dr["fei"].ToString();
			
          sm.Text = dr["sm"].ToString();
        }
        dr.Close();
        con.Close();
        

    }
	 protected void  Button1_Click(object sender, EventArgs e)
    {
	
       string jiaoshi=Session["UserName"].ToString();
        string sf1 = sf.Text.Trim();
		 
		  
      
        SqlCommand com = new SqlCommand();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        com.Connection = con;
        con.Open();
        com.CommandText = "update yusuan set jiaoshi='"+jiaoshi+"',sf='"+sf1+"' ,yijian='" + yijian.Value.Trim() + "' where  id=" + Request.QueryString["id"].ToString();

      
            com.ExecuteNonQuery();
            Response.Write("<script language=javascript> alert('审批成功！');window.location.href='pingce.aspx'</script>");

      
       
        con.Close();
    }
}
