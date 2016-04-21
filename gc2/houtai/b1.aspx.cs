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

public partial class Bedrock_b1 : System.Web.UI.Page
{
    string js = @"<Script language='JavaScript'>
                    alert('{0}');  
                  </Script>";
    protected void Page_Load(object sender, EventArgs e)
    {
	        if (Request.Cookies["user"] == null)
        {
            HttpContext.Current.Response.Write(string.Format(js, "请先登陆！"));
            Response.Redirect("../Default.aspx");
        }
		 else
        { 
        if(!IsPostBack)
        {
            
            this.bind();
          
			} 
        }
    }
	
    public void bind()
    {
        SqlConnection strcon = new SqlConnection(System.Configuration.ConfigurationManager.AppSettings["strconn"]);
        strcon.Open();
        SqlDataAdapter sda = new SqlDataAdapter("select * from yusuan  ", strcon);
        DataSet ds = new DataSet();
        sda.Fill(ds,"yusuan ");
        GridView1.DataSource = ds.Tables["yusuan "];
        GridView1.DataKeyNames = new string[] {"id"};
        GridView1.DataBind();
		 
		 
		 
			
		
    }
    protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
    {
        GridView1.PageIndex = e.NewPageIndex;
        this.bind();
    }
	  protected void btnGridView_Click(object sender, EventArgs e)
    {
        CommonClass.ReportToExcel(GridView1, "从GridView导出的EXCEL");
        //Common.ReportToText(GridView1, "从GridView导出的text");
        //DBoperate dbo = new DBoperate();
        //CommonClass.DataTableExport(dbo.GetDataTable(SqlDataSource1.SelectCommand), GridView1, "DT表");

    }
	public override void VerifyRenderingInServerForm(Control control)
{
     //base.VerifyRenderingInServerForm(control);
}


   
    
	
}
