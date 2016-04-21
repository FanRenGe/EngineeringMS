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
            
			 
			 
			 
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
	     int fei = Convert.ToInt32(shu.Text.ToString());
         string yusuan=this.yusuan.Text.ToString();
		 
		 string sm=this.sm.Text.ToString();
		  
        
        string shijian = this.shijian.SelectedDate.ToShortDateString();
	 
	
        string Username = Convert.ToString(Session["username"]);
        
        SqlConnection strcon = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strconn"]);
        strcon.Open();
        SqlCommand scd = new SqlCommand("insert into yusuan(yusuan,shijian,Username,sm,fei)values('" + yusuan + "','" + shijian + "','" + Username + "','" + sm + "','" + fei + "')", strcon);
        scd.ExecuteNonQuery();
        Response.Write("<script language=javascript>alert('您已经添加成功');location='tijiao.aspx'</script>");
        strcon.Close();
    }
	

    
	
}
