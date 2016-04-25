using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;


public partial class Top : System.Web.UI.Page
{
   
    public string userName = "";
    public string roleName = "";
    protected void Page_Load(object sender, EventArgs e)
    {

        if (Session["UserName"] != null)
        {
            
            userName = Session["UserName"].ToString();
            roleName = "";
        }
        else
        {
            Response.Write("<script>parent.window.location.href='Login.aspx'</script>");
        }
    }

    protected void LBQuit_Click(object sender, EventArgs e)
    {
        Session["UserName"] = null;
        Response.Write("<script>parent.window.location.href='Default.aspx'</script>");
    }
}
