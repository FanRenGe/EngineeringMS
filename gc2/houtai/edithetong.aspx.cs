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

public partial class admin_edithetong : System.Web.UI.Page
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

            SqlDataAdapter sda1 = new SqlDataAdapter("select * from yg", strcon);
            DataSet ds1 = new DataSet();
            sda1.Fill(ds1, "yg");
            this.CompanyId1.DataSource = ds1;
            this.CompanyId1.DataValueField = "Employeeid";
            this.CompanyId1.DataTextField = "username";
            this.CompanyId1.DataBind();

            SqlDataAdapter sda2 = new SqlDataAdapter("select * from kehu", strcon);
            DataSet ds2 = new DataSet();
            sda2.Fill(ds2, "kehu");
            this.CompanyId2.DataSource = ds2;
            this.CompanyId2.DataValueField = "Employeeid";
            this.CompanyId2.DataTextField = "username";
            this.CompanyId2.DataBind();

            if (Request.QueryString["id"] != null)
            {
                Label2.Text = "修改合同信息";
                Button2.Text = "修改";
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
        com.CommandText = "select * from hetong where ID=" + Request.QueryString["id"].ToString();
        SqlDataReader dr = com.ExecuteReader();
        while (dr.Read())
        {


            ming.Text = dr["ming"].ToString();
            zt.Text = dr["zt"].ToString();
            yusuan.Text = dr["yusuan"].ToString();
            sj.Text = dr["sj"].ToString();
            CompanyId1.Items.FindByValue(dr["dutyid"].ToString()).Selected = true;
            CompanyId2.Items.FindByValue(dr["dutyid2"].ToString()).Selected = true;
        }
        dr.Close();
        con.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string sq = "";
        int dutyid = Convert.ToInt32(CompanyId1.SelectedItem.Value.ToString());
        string branch = CompanyId1.SelectedItem.Text;
        int dutyid2 = Convert.ToInt32(CompanyId2.SelectedItem.Value.ToString());
        string branch2 = CompanyId2.SelectedItem.Text;
        if (Button2.Text == "修改")
        {
            sq = "update hetong set branch='" + branch + "' ,dutyid='" + dutyid + "',branch2='" + branch2 + "' ,dutyid2='" + dutyid2 + "',ming='" + ming.Text.Trim() + "',zt='" + zt.Text.Trim() + "',yusuan='" + yusuan.Text.Trim() + "',sj='" + sj.Text.Trim() + "'  where ID=" + Request.QueryString["id"].ToString();
        }
        else
        {
            sq = "insert into hetong ([ming],[zt],[yusuan],[sj],[dutyid],[branch],[dutyid2],[branch2]) values ('" + ming.Text.Trim() + "','" + zt.Text.Trim() + "','" + yusuan.Text.Trim() + "','" + sj.Text.Trim() + "','" + dutyid + "','" + branch + "','" + dutyid2 + "','" + branch2 + "')";

        }
        SqlCommand com = new SqlCommand();
        SqlConnection con = new SqlConnection(sql);
        com.Connection = con;
        con.Open();
        com.CommandText = sq;
        com.ExecuteNonQuery();
        con.Close();
        Response.Write("<script language=javascript> alert('操作成功！');document.location='hetong.aspx'; </script>");


    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Response.Write("<script language=javascript> 　document.location='hetong.aspx'; </script>");

    }

}
