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
public partial class Info_zu : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       
        if (!IsPostBack)
        {
           
              
            if (Request["id"] != null)
            {
                
                this.Button1.Visible = false;
                this.Button3.Visible = true;
               
                this.Label2.Text = "修改小组信息";
                int id=Convert.ToInt32(Request["id"].ToString());
                SqlConnection con1 = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
                con1.Open();
                string sql1 = "select * from zu where id="+id+"";
                SqlCommand com1 = new SqlCommand(sql1,con1);
                SqlDataReader dr1 = com1.ExecuteReader();
                if (dr1.Read())
                {

                    ming.Text = dr1["ming"].ToString();
					shu.Text = dr1["shu"].ToString();
					zuzhang.Text = dr1["zuzhang"].ToString();
					 
                     

                }
                con1.Close();
            }
            else
            {
                this.MyPanel.Visible=true;
                this.Button1.Visible=true;
                this.Button3.Visible=false;
                this.Label2.Text = "添加小组信息";
              
            }
         
        }
        
    }
    static string src = "";
    protected void Button1_Click(object sender, EventArgs e)
    {
        
         

            if (ming.Text.Trim() == "" )
            {
                Response.Write("<script>alert('名必须填写')</script>");
            }
            else
            {


                SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
                con.Open();
              
             
                string addTime = DateTime.Now.ToShortDateString();
               
                string ming1 = ming.Text.Trim();
				 string shu1 = shu.Text.Trim();
				  string zuzhang1 = zuzhang.Text.Trim();
               
                string sql = "insert into zu([ming],[shu],[zuzhang]) values('"+ming1+"','" + shu1 + "','" + zuzhang1 + "')";
                SqlCommand com = new SqlCommand(sql, con);
                com.ExecuteNonQuery();
                
                Response.Write("<script>alert('添加成功！');window.location.href='zuxs.aspx';</script>");
                con.Close();
            }
    
        
    }
    protected void Button4_Click(object sender, EventArgs e)
    {
        Response.Redirect("zuxs.aspx");
    }
    protected void button2_Click(object sender, EventArgs e)
    {
       
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
       
       
       
       
      
        
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        con.Open();
        int id = Convert.ToInt32(Request["id"].ToString());
        string sql = "update zu set ming='"+ming.Text.Trim()+"',shu='"+shu.Text.Trim()+"',zuzhang='"+zuzhang.Text.Trim()+"' where id="+id+" ";
        SqlCommand com = new SqlCommand(sql,con);
        com.ExecuteNonQuery();
        Response.Write("<script>alert('修改成功!');window.location.href='zuxs.aspx';</script>");
        con.Close();
    }
}
