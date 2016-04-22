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
public partial class Info_zuxs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        
       
            if (!IsPostBack)
            {
                
            }
        
        Bind();
    }
    public void Bind()
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        con.Open();

        string sql = "select * from zu";
        SqlDataAdapter da = new SqlDataAdapter(sql,con);
        DataSet ds = new DataSet();
        da.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();
        this.Label1.Text = "共"+ds.Tables[0].Rows.Count+"条记录";
        con.Close();
    }
 
	

   
   
   
    protected void GridView1_RowDeleting1(object sender, GridViewDeleteEventArgs e)
    {
        int id = Convert.ToInt32(GridView1.DataKeys[e.RowIndex].Value.ToString());
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        con.Open();
        string sql = "delete from zu where id="+id+"";
        SqlCommand com = new SqlCommand(sql,con);
        com.ExecuteNonQuery();
        Response.Write("<script>alert('删除成功！')</script>");
        Bind();
        con.Close();
    }
    protected void GridView1_RowDataBound1(object sender, GridViewRowEventArgs e)
    {
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            if (e.Row.RowState == DataControlRowState.Normal || e.Row.RowState == DataControlRowState.Alternate)
            {
                ((LinkButton)e.Row.Cells[5].Controls[0]).Attributes.Add("onclick", "javascript:return confirm('你确认要删除：\"" + e.Row.Cells[1].Text + "\"吗?')");
            }
        }
    }
 
    protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
    {
        int id = Convert.ToInt32(GridView1.DataKeys[e.NewEditIndex].Value.ToString());
        Response.Redirect("zu.aspx?id=" + id + "");
    }
}
