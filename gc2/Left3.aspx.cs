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

public partial class admin_left3 : System.Web.UI.Page
{
    string js = @"<Script language='JavaScript'>
                    alert('{0}');  window.parent.location='Default.aspx'
                  </Script>";
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Write("<Script language='JavaScript'>window.parent.location='Default.aspx';  </Script>");
    }
   
}
