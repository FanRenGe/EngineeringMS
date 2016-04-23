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

public partial class admin_editzl : System.Web.UI.Page
{
    string sql = ConfigurationManager.AppSettings["Connection"];

    string js = @"<Script language='JavaScript'>
                    alert('{0}');  
                  </Script>";
    protected void Page_Load(object sender, EventArgs e)
    {


        if (!IsPostBack)
        {
            SqlConnection strcon = new SqlConnection(ConfigurationManager.AppSettings["Connection"]);
            strcon.Open();

            SqlDataAdapter sda1 = new SqlDataAdapter("select * from zu", strcon);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1, "zu");
            this.CompanyId1.DataSource = ds1;
            this.CompanyId1.DataValueField = "id";
            this.CompanyId1.DataTextField = "ming";
            this.CompanyId1.DataBind();
            if (Request.QueryString["id"] != null)
            {
                Button2.Text = "修改项目资料";
                bind();

            }
        }

    }
    private void bind()
    {
        SqlCommand com = new SqlCommand();
        SqlConnection con = new SqlConnection(sql);
        com.Connection = con;
        con.Open();
        com.CommandText = "select * from zl where ID=" + Request.QueryString["id"].ToString();
        SqlDataReader dr = com.ExecuteReader();
        while (dr.Read())
        {
            ming.Text = dr["ming"].ToString();

            zijin.Text = dr["zijin"].ToString();
            kaishi.Text = dr["kaishi"].ToString();
            jieshu.Text = dr["jieshu"].ToString();
            CompanyId1.Items.FindByValue(dr["dutyid"].ToString()).Selected = true;
        }
        dr.Close();
        con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string sq = "";
        int dutyid = Convert.ToInt32(CompanyId1.SelectedItem.Value.ToString());
        string branch = CompanyId1.SelectedItem.Text;
        if (Button2.Text == "修改")
        {
            sq = "update zl set branch='" + branch + "' ,dutyid='" + dutyid + "',zijin='" + zijin.Text.ToString() + "',ming='" + ming.Text.Trim() + "',kaishi='" + kaishi.Text.Trim() + "',jieshu='" + jieshu.Text.Trim() + "'  where ID=" + Request.QueryString["id"].ToString();
        }
        else
        {
            sq = "insert into zl ([ming],[zijin],[kaishi],[jieshu],[dutyid],[branch]) values ('" + ming.Text.ToString() + "','" + zijin.Text.Trim() + "','" + kaishi.Text.Trim() + "','" + jieshu.Text.Trim() + "','" + dutyid + "','" + branch + "')";

        }
        SqlCommand com = new SqlCommand();
        SqlConnection con = new SqlConnection(sql);
        com.Connection = con;
        con.Open();
        com.CommandText = sq;
        com.ExecuteNonQuery();
        con.Close();
        Response.Write("<script language=javascript> alert('操作成功！');document.location='zl.aspx'; </script>");


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Write("<script language=javascript> 　document.location='zl.aspx'; </script>");

    }

}
