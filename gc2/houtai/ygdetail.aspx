<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ygdetail.aspx.cs" Inherits="houtai_ygdetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">

        <div style="font-size: 9pt">
            <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">

                <tr height="30">

                    <td background="../Images/topbg.jpg" width="80" style="height: 30px"><b>
                        <asp:Label ID="Label2" runat="server" Text="查看"></asp:Label></b></td>
                    <td background="../Images/topbg.jpg" align="right" style="height: 30px"></td>
                </tr>
            </table>
            <table align="center" style="width: 560px; height: 513px">

                <tr>
                    <td width="100">员工姓名：</td>
                    <td>
                        <asp:TextBox ID="username" runat="server" Enabled="False"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>所属小组：</td>
                    <td>
                        <asp:TextBox ID="zu" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>


                <tr>
                    <td>QQ：</td>
                    <td>
                        <asp:TextBox ID="qq" runat="server" Enabled="False"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>电话：</td>
                    <td>
                        <asp:TextBox ID="dh" runat="server" Enabled="False"></asp:TextBox></td>
                </tr>
                <tr>
                    <td>工号：</td>
                    <td>
                        <asp:TextBox ID="hao" runat="server" Enabled="False"></asp:TextBox></td>
                </tr>

                <tr>
                    <td>性别：</td>
                    <td>
                        <asp:TextBox ID="xingbie" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>职位：</td>
                    <td>
                        <asp:TextBox ID="jibie" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td align="center" colspan="4">
                        <asp:Button ID="Button4" CssClass="BnCss" runat="server" Text="退  出" OnClick="Button4_Click" Width="50px" /></td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
