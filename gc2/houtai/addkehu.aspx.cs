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
public partial class Info_addkehu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
           SqlConnection strcon = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
            strcon.Open();
            
			
              
            if (Request["Employeeid"] != null)
            {
                
                this.Button1.Visible = false;
                this.Button3.Visible = true;
               
                this.Label2.Text = "修改信息";
                int Employeeid=Convert.ToInt32(Request["Employeeid"].ToString());
                SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
                con1.Open();
                string sql1 = "select * from kehu where Employeeid="+Employeeid+"";
                SqlCommand com1 = new SqlCommand(sql1,con1);
                SqlDataReader dr1 = com1.ExecuteReader();
                if (dr1.Read())
                {

                    username.Text = dr1["username"].ToString();
					 dh.Text = dr1["dh"].ToString();
					  hao.Text = dr1["hao"].ToString();
					
                   
                  
                  
                     
                     qq.Text = dr1["qq"].ToString();
                 
				   
				    xingbie.Text = dr1["xingbie"].ToString();
				    
					   jibie.Text = dr1["jibie"].ToString();
                     
                }
                con1.Close();
            }
            else
            {
                this.MyPanel.Visible=true;
                this.Button1.Visible=true;
                this.Button3.Visible=false;
                this.Label2.Text = "添加";
              
            }
         
        }
        
    }
    static string src = "";
    protected void Button1_Click(object sender, EventArgs e)
    {
        
         

            if (username.Text.Trim() == "" )
            {
                Response.Write("<script>alert('姓名必须填写')</script>");
            }
            else
            {


                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
                con.Open();
               
             
               
               
                string qqs = qq.Text.Trim();
				
			
				   string xingbie1 = xingbie.Text.Trim();
				  
					  string jibie1 = jibie.Text.Trim();
					 
					  
               
                string sql = "insert into kehu([username],[qq],[dh],[hao],[xingbie],[jibie],lei) values('"+username.Text.Trim()+"','" + qqs + "','"+dh.Text.Trim()+"','"+hao.Text.Trim()+"','" + xingbie1 + "','" + jibie1 + "','员工')";
                SqlCommand com = new SqlCommand(sql, con);
                com.ExecuteNonQuery();
               
                Response.Write("<script>alert('添加成功！');window.location.href='kehu.aspx';</script>");
                con.Close();
            }
    
        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("kehu.aspx");
    }
   
	
    protected void Button3_Click(object sender, EventArgs e)
    {
       
       
       
      
         
       
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        con.Open();
        int Employeeid = Convert.ToInt32(Request["Employeeid"].ToString());
        string sql = "update kehu set qq='" + qq.Text.Trim() + "' ,username='" + username.Text.Trim() + "'  ,dh='" + dh.Text.Trim() + "',xingbie='" + xingbie.Text.Trim() + "',jibie='" + jibie.Text.Trim() + "',hao='" + hao.Text.Trim() + "'  where Employeeid="+Employeeid+" ";
        SqlCommand com = new SqlCommand(sql,con);
        com.ExecuteNonQuery();
        Response.Write("<script>alert('修改成功!');window.location.href='kehu.aspx';</script>");
        con.Close();
    }
}
