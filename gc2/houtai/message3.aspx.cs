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
public partial class ax_message3 : System.Web.UI.Page
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
        if (!this.IsPostBack)
        {
            bind();
        }
		}
    }
    private void bind()
    {
       
        string str = "";


        str = "select * from zl ";


        SqlDataAdapter da = new SqlDataAdapter(new SqlCommand(str, new SqlConnection(ConfigurationManager.AppSettings["Connection"])));
        DataSet ds1 = new DataSet();
        DataSet ds = new DataSet();
        da.Fill(ds1);
        this.AspNetPager1.RecordCount = ds1.Tables[0].Rows.Count;
        da.Fill(ds, this.AspNetPager1.PageSize * (AspNetPager1.CurrentPageIndex - 1), this.AspNetPager1.PageSize, "bind");

        DataGrid1.DataSource = ds.Tables[0];
        DataGrid1.DataBind();
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
        str = "select * from  zl";



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
        Response.Redirect("messlook3.aspx?id="+DataGrid1.DataKeys[e.Item.ItemIndex].ToString());
    }
}
