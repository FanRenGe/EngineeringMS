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
public partial class ax_pingce : System.Web.UI.Page
{
   

   
    protected void Page_Load(object sender, EventArgs e)
    {
      
        if (!this.IsPostBack)
        {
            bind();
        }
    }
    private void bind()
    {
       
        string str = "";


        str = "select * from yusuan  order by id desc";


        SqlDataAdapter da = new SqlDataAdapter(new SqlCommand(str, new SqlConnection(ConfigurationManager.AppSettings["Connection"])));
        DataSet ds1 = new DataSet();
        DataSet ds = new DataSet();
        da.Fill(ds1);
        this.AspNetPager1.RecordCount = ds1.Tables[0].Rows.Count;
        da.Fill(ds, this.AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), this.AspNetPager1.PageSize, "bind");

        DataGrid1.DataSource = ds.Tables[0];
        DataGrid1.DataBind();
		SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"])
;

       con.Open();
		 SqlCommand scd = new SqlCommand("select sum(fei) as ff from yusuan ", con);
        int count = Convert.ToInt32(scd.ExecuteScalar());
		gg.Text = Convert.ToString(count);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        del();

    }
    private void del()
    {
        SqlCommand com = new SqlCommand();
        SqlConnection con = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
        com.Connection = con;
        con.Open();

        string str = "";
        str = "select * from yusuan    order by id desc";



        com.CommandText = str;
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
                ds.Tables["table"].Rows[i + ((AspNetPager1.CurrentPageIndex-1) * Int32.Parse(AspNetPager1.PageSize.ToString()))].Delete();
            }
        }
        da.Update(ds, "table");
        ds.AcceptChanges();
        con.Close();
        Response.Write("<script language=javascript> alert('删除成功！');document.location=document.location; </script>");
    }
    protected void AspNetPager1_PageChanged(object src, Wuqi.Webdiyer.PageChangedEventArgs e)
    {
        this.AspNetPager1.CurrentPageIndex = e.NewPageIndex;
        bind();
    }
	

    protected void DataGrid1_DeleteCommand(object source, DataGridCommandEventArgs e)
    {
        Response.Redirect("look.aspx?id="+DataGrid1.DataKeys[e.Item.ItemIndex].ToString());
    }
}
