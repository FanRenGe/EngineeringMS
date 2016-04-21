<%@ Page Language="C#" AutoEventWireup="true" CodeFile="look1.aspx.cs" Inherits="ax_look1" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title><meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="Admin_STYLE.css" rel="stylesheet" type="text/css">
</head>
<body background='Images/背景2.jpg'>
  
   
    
 
	    <form id="form1" runat="server">
	  <tabel>
  <tr>
                <td >
                   员工姓名：</td>
                <td>
                    <asp:TextBox ID="Username" runat="server" Width="116px"></asp:TextBox></td>
						 </tr>
						 </br>
						  <tr>
                <td >
                    报销：</td>
                <td>
                    <asp:TextBox ID="bao" runat="server" Width="116px"></asp:TextBox></td>
						 </tr>
						  </br>
						   <tr>
                <td >
                    费用：</td>
                <td>
                    <asp:TextBox ID="fei" runat="server" Width="116px"></asp:TextBox></td>
						 </tr>
						 	 </br>
						  
						 	
						  <tr>
                <td >
                   报销说明：</td>
                <td>
                    <asp:TextBox ID="sm" runat="server" Width="116px"></asp:TextBox></td>
						 </tr>
   <tr>
                <td >
                    审批意见：</td>
                <td>
                    <textarea name="yijian" rows="10" style="width: 357px" id="yijian" runat="server"></textarea></td>
						 </tr><br />
	 <tr bgcolor="#ffffff">
                <td >
                  是否通过：</td>
                <td > <asp:DropDownList ID="sf" runat="server">
                         <asp:ListItem>通过</asp:ListItem>
                    <asp:ListItem>不通过</asp:ListItem>
                    </asp:DropDownList>
					  
                    </td>
              </tr>
			  
			  <br />
			  <tr >
                <td ><label>
                 <asp:Button ID="Button1" runat="server" Text="审批"  OnClick="Button1_Click" />
                  </label>
                   
                </td>
              </tr>
	
   
</table>

       </form>
</body>
</html>
