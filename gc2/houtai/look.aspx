<%@ Page Language="C#" AutoEventWireup="true" CodeFile="look.aspx.cs" Inherits="ax_look" %>
<%@ Register Assembly="FredCK.FCKeditorV2" Namespace="FredCK.FCKeditorV2" TagPrefix="FCKeditorV2" %>
 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>�ޱ���ҳ</title><meta http-equiv="Content-Type" content="text/html; charset=gb2312">
<link href="Admin_STYLE.css" rel="stylesheet" type="text/css">
</head>
<body background='Images/����2.jpg'>
  
   
    
 
	    <form id="form1" runat="server">
	  <tabel>
  <tr>
                <td >
                   Ա��������</td>
                <td>
                    <asp:TextBox ID="Username" runat="server" Width="116px"></asp:TextBox></td>
						 </tr>
						 </br>
						  <tr>
                <td >
                    Ԥ�㣺</td>
                <td>
                    <asp:TextBox ID="yusuan" runat="server" Width="116px"></asp:TextBox></td>
						 </tr>
						  </br>
						   <tr>
                <td >
                    ���ã�</td>
                <td>
                    <asp:TextBox ID="fei" runat="server" Width="116px"></asp:TextBox></td>
						 </tr>
						 	 </br>
						  
						 	
						  <tr>
                <td >
                   Ԥ��˵����</td>
                <td>
                      <asp:TextBox ID="sm" runat="server" Width="116px"></asp:TextBox></td>
						 </tr>
   <tr>
                <td >
                    ���������</td>
                <td>
                    <textarea name="yijian" rows="10" style="width: 357px" id="yijian" runat="server"></textarea></td>
						 </tr><br />
	 <tr bgcolor="#ffffff">
                <td >
                  �Ƿ�ͨ����</td>
                <td > <asp:DropDownList ID="sf" runat="server">
                         <asp:ListItem>ͨ��</asp:ListItem>
                    <asp:ListItem>��ͨ��</asp:ListItem>
                    </asp:DropDownList>
					  
                    </td>
              </tr>
			  
			  <br />
			  <tr >
                <td ><label>
                 <asp:Button ID="Button1" runat="server" Text="����"  OnClick="Button1_Click" />
                  </label>
                   
                </td>
              </tr>
	
   
</table>

       </form>
</body>
</html>
