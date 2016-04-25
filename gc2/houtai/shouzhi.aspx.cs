using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class houtai_shouzhi : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSearch_Click(object sender, EventArgs e)
    {
        string conn = ConfigurationManager.AppSettings["Connection"];
        string sql = "select (select SUM(fei)  from shouru where 1=1) as shouru, (select SUM(fei)  from ( select (fei) from bao  where 1=1 union select (fei) from yusuan where 1=1 )a ) as zhichu";


        string filer = string.Empty;

        if (!string.IsNullOrEmpty(kaishi.Text.Trim()))
        {
            filer += string.Format(" and CONVERT(datetime, shijian) >= '{0}' ", kaishi.Text.Trim());
        }
        if (!string.IsNullOrEmpty(jieshu.Text.Trim()))
        {
            filer += string.Format(" and CONVERT(datetime, shijian) <= '{0}' ", jieshu.Text.Trim());
        }
        sql = string.Format(sql, filer);
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