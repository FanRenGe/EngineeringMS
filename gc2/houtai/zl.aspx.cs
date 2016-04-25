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
public partial class admin_zl : System.Web.UI.Page
{
    string sql = ConfigurationManager.AppSettings["Connection"];
    string js = @"<Script language='JavaScript'>
                    alert('{0}');  
                  </Script>";
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            Button1.Attributes.Add("onclick", "return confirm('你真的要执行删除吗？');");
            bind();
        }

    }
    private void bind()
    {
        string sq = "";


        sq = "select a.*,b.zuzhang from zl a join zu b on a.dutyid =b.id order by a.ID desc";

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
    protected void DataGrid1_ItemCommand(object source, DataGridCommandEventArgs e)
    {
        if (e.CommandName == "Select")
        {
            Response.Redirect("editzl.aspx?id=" + DataGrid1.DataKeys[e.Item.ItemIndex]);
        }
        if (e.CommandName == "Detail")
        {
            Response.Redirect("zldetail.aspx?id=" + DataGrid1.DataKeys[e.Item.ItemIndex]);
        }
        if (e.CommandName == "Delete")
        {
            int id = Convert.ToInt32(DataGrid1.DataKeys[e.Item.ItemIndex]);

            SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
            con.Open();
            string sql = "delete from zl where id=" + id;
            SqlCommand com = new SqlCommand(sql, con);
            com.ExecuteNonQuery();
            Response.Write("<script>alert('删除成功！')</script>");
            bind();
            con.Close();
        }
    }
    private void del()
    {
        SqlCommand com = new SqlCommand();
        SqlConnection con = new SqlConnection(sql);
        com.Connection = con;

        com.CommandText = "select  * from zl order by ID desc";
        SqlDataAdapter da = new SqlDataAdapter();
        SqlCommandBuilder cb = new SqlCommandBuilder(da);
        da.SelectCommand = com;
        DataSet ds = new DataSet();
        da.Fill(ds, "table");
        DataTable tb = ds.Tables["table"];
        for (int i = 0; i < this.DataGrid1.Items.Count; i++)
        {
            CheckBox cbk = (CheckBox)(DataGrid1.Items[i].FindControl("CheckBox1"));
            if (cbk.Checked)
            {
                ds.Tables["table"].Rows[i + (Int32.Parse(DataGrid1.CurrentPageIndex.ToString()) * Int32.Parse(DataGrid1.PageSize.ToString()))].Delete();
            }
        }
        da.Update(ds, "table");
        ds.AcceptChanges();
        con.Close();
        Response.Write("<script language=javascript> alert('删除成功！');document.location=document.location; </script>");
        if ((DataGrid1.CurrentPageIndex == DataGrid1.PageCount - 1) && DataGrid1.Items.Count == 1)
        {
            //如果当前页-1>1表示当前页为多页的最后一页 
            if (DataGrid1.CurrentPageIndex - 1 > 1)
            {
                DataGrid1.CurrentPageIndex = DataGrid1.CurrentPageIndex - 1;
            }
            else
            {
                DataGrid1.CurrentPageIndex = 0;
            }
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        del();
    }

    //protected void LinkButton1_Click(object sender, EventArgs e)
    //{
    //    Response.Redirect("editzl.aspx");
    //}

    protected void Button2_OnClick(object sender, EventArgs e)
    {
        Response.Redirect("editzl.aspx");
    }

    protected void DataGrid1_OnItemDataBound(object sender, DataGridItemEventArgs e)
    {
        e.Item.Cells[9].Attributes.Add("onclick", "return   confirm('您真的要删除此行吗？');");

    }
}
