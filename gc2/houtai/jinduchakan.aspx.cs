using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class houtai_jinduchakan : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {

            bind();
        }
    }
    private void bind()
    {
        string sq = "";

        string sql = ConfigurationManager.AppSettings["Connection"];
        sq = "select * from jindu order by ID desc";

        SqlCommand com = new SqlCommand();
        SqlConnection con = new SqlConnection(sql);
        com.Connection = con;
        com.CommandText = sq;
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataGrid1.DataSource = ds.Tables[0];
        DataGrid1.DataBind();



    }
    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        bind();
    }
}