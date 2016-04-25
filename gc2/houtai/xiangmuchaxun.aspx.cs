using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class houtai_xiangmuchaxun : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SqlConnection strcon = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
            strcon.Open();

            SqlDataAdapter sda1 = new SqlDataAdapter("select * from zl order by id ", strcon);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1, "zl");
            this.xiangmubianhao.DataSource = ds1;
            this.xiangmubianhao.DataValueField = "id";
            this.xiangmubianhao.DataTextField = "ming";
            this.xiangmubianhao.DataBind();
            xiangmubianhao.Items.Insert(0, new ListItem("请选择", ""));
            bind();
        }
    }

    protected void Button2_OnClick(object sender, EventArgs e)
    {
        bind();
    }

    protected void DataGrid1_PageIndexChanged(object source, DataGridPageChangedEventArgs e)
    {
        DataGrid1.CurrentPageIndex = e.NewPageIndex;
        bind();
    }
    private void bind()
    {
        string sq = "";

        string sql = ConfigurationManager.AppSettings["Connection"];


        sq = "select * from zl a left join jindu b on a.id=b.dutyid  join zu c on a.dutyid =c.id where 1=1 {0} order by a.id desc";
        string filer = "";
        if (xiangmubianhao.SelectedValue != "")
        {
            filer = " and a.id=" + xiangmubianhao.SelectedValue;

        }
        sq = string.Format(sq, filer);
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
}