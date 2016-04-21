<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>工程项目管理系统</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"><SCRIPT src="dojo.js" type=text/javascript></SCRIPT>




<STYLE type=text/css>
BODY {
	
}
</STYLE>
<LINK href="css.css" type=text/css rel=stylesheet>
<META content="MSHTML 6.00.2900.3268" name=GENERATOR>
<style type="text/css">
<!--
.STYLE1 {
	font-size: xx-large;
	color: #FF0000;
}
-->
</style>
</HEAD>
<BODY >
<FORM id=myform name=myform method=post runat="server">
<TABLE height=600 width="100%" border=0>
  <TBODY>
  <TR>
    <TD height=25><div align="center" class="STYLE1">工程项目管理系统</div></TD>
  </TR>
  <TR>
    <TD vAlign=top>
      <TABLE height=318 width=612 align=center border=0>
        <TBODY>
        <TR>
          <TD vAlign=top>
            <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
              <TBODY>
              <TR>
                <TD><IMG height=186 alt="" src="index_2_03.jpg" 
                  width=612></TD></TR>
              <TR>
                <TD>
                  <TABLE cellSpacing=0 cellPadding=0 width="100%" border=0>
                    <TBODY>
                    <TR>
                      <TD vAlign=top width="95%">
                        <TABLE cellSpacing=0 cellPadding=0 width="100%" 
border=0>
                          <TBODY>
                          <TR>
                            <TD>
                              <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                              border=0>
                                <TBODY>
                                <TR>
                                <TD width="52%" 
                                background=bg_1.jpg><IMG height=36 
                                alt="" src="index_2_05.jpg" 
                                width=298></TD>
                                <TD class=a2 vAlign=bottom width="48%" 
                                bgColor=#ffffff>
                                </TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD>
                              <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                              border=0>
                                <TBODY>
                                <TR>
                                <TD width="7%"><IMG height=165 alt="" 
                                src="index_2_09.jpg" width=75></TD>
                                <TD align=middle width="93%" bgColor=#ffffff>
                                <TABLE class=red width=391 border=0>
                                <TBODY>
                                <TR>
                                <TD width="30%">　</TD>
                                <TD width="50%">　</TD>
                                <TD width="20%">　</TD></TR>
                                <TR>
                                <TD class=a2>
                                <DIV align=right>用户名：</DIV></TD>
                                <TD align=left><asp:TextBox ID="TextBox1" runat="server" Width="138px"></asp:TextBox></TD>
                               </TR>
                                <TR>
                                <TD class=a2>
                                <DIV align=right>密码：</DIV></TD>
                                <TD align=left>
                                <DIV align=left><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"  Width="138px"></asp:TextBox> 
                                </DIV></TD>
                                </TR>
								 <TR>
                                <TD class=a2>
                                <DIV align=right>类型：</DIV></TD>
                                <TD align=left>
                                <DIV align=left><asp:DropDownList ID="lei" runat="server">
                         <asp:ListItem>管理员</asp:ListItem>
                   
					<asp:ListItem>员工</asp:ListItem>
                    </asp:DropDownList>
                                </DIV></TD>
                                </TR>
                                <TR>
                                <TD class=a2>
                                <DIV align=right>验证码：</DIV></TD>
                                <TD>
                                <TABLE cellSpacing=0 cellPadding=0 width="100%" 
                                border=0>
                                <TBODY>
                                <TR>
                                <TD align=left width="55%">
                                <DIV align=left><asp:TextBox ID="TextBox3" runat="server"   Width="80px"></asp:TextBox>
                            &nbsp; <img src="VerifyCode.aspx?" alt="看不清？点击更换" onclick="this.src=this.src+'?'" style="width: 50px; height: 20px;" />
                          <td width="100"><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
            ErrorMessage="验证码不能为空"></asp:RequiredFieldValidator> </DIV></TD>
                                </TR></TBODY></TABLE></TD>
                                <TD>　</TD></TR>
                                <TR>
                                <TD>　</TD>
                                <TD vAlign=bottom height=40>
                               <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" /></TD>
                                <TD 
                                vAlign=bottom>　</TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
                          <TR>
                            <TD><IMG height=24 alt="" 
                              src="index_2_15.jpg" 
                          width=541></TD></TR></TBODY></TABLE></TD>
                      <TD width="5%"><IMG height=225 alt="" 
                        src="index_2_08.jpg" 
                  width=71></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR></TBODY></TABLE></TD></TR>
 
    </TBODY></TABLE></FORM>
</body>
</html>
