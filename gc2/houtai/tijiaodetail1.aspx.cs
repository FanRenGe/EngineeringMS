using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class houtai_tijiaodetail1 : System.Web.UI.Page
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
        string sql = "select * from bao order by ID desc";
        string conn = ConfigurationManager.AppSettings["Connection"];
        SqlCommand com = new SqlCommand();
        SqlConnection con = new SqlConnection(conn);
        com.Connection = con;
        com.CommandText = sql;
        SqlDataAdapter da = new SqlDataAdapter(com);
        DataSet ds = new DataSet();
        da.Fill(ds);
        DataGrid1.DataSource = ds.Tables[0];
        DataGrid1.DataBind();


    }
}