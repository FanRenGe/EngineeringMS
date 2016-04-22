<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zudetail.aspx.cs" Inherits="houtai_zudetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    
    <div style="font-size: 9pt">
    <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">
	
				<tr height="30">
					
					<td background="../Images/topbg.jpg" width="80" style="height: 30px"><b>
                        <asp:Label ID="Label2" runat="server" Text="查看"></asp:Label></b></td>
					<TD background="../Images/topbg.jpg" align="right" style="height: 30px">
					</TD>
				</tr>
	  </table>
        <table align="center" style="width: 560px; height: 513px" >
       
        <asp:Panel ID="MyPanel" runat="server" Visible="true">
        
        
        
            <tr>
                <td width="100" >
                    小组名：</td>
                <td >
                    <asp:TextBox ID="ming" runat="server" Enabled="False"></asp:TextBox></td>
            </tr>
			
			<tr>
                <td width="100" >
                    人数：</td>
                <td >
                    <asp:TextBox ID="shu" runat="server" Enabled="False"></asp:TextBox></td>
            </tr>
			<tr>
                <td width="100" >
                    小组组长：</td>
                <td >
                    <asp:TextBox ID="zuzhang" runat="server" Enabled="False"></asp:TextBox></td>
            </tr>
            </asp:Panel>
           
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="Button4" CssClass="BnCss" runat="server" Text="退  出" OnClick="Button4_Click" Width="50px" /></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
