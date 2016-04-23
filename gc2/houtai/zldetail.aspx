<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zldetail.aspx.cs" Inherits="houtai_zldetail" %>

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

                    <td background="../Images/topbg.jpg" width="100%" style="height: 30px"><b>
                        <img height="16" src="../Images/leader_12.jpg">
                        <asp:Label ID="Label2" runat="server" Text="查看"></asp:Label></b></td>
                    <td background="../Images/topbg.jpg" align="right" style="height: 30px"></td>
                </tr>
            </table>
            <table align="center" style="width: 560px; height: 513px">
                <tr>
                    <td style="width: 85px">项目资料名：</td>
                    <td style="width: 155px">
                        <asp:TextBox ID="ming" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">选择小组：</td>
                    <td style="width: 155px">
                        <asp:TextBox ID="branch" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">预算资金：</td>
                    <td style="width: 155px">
                        <asp:TextBox ID="zijin" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">计划开始时间：</td>
                    <td style="width: 155px">
                        <asp:TextBox ID="kaishi" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">计划结束时间：</td>
                    <td style="width: 155px">
                        <asp:TextBox ID="jieshu" runat="server" Enabled="False"></asp:TextBox>

                    </td>
                </tr>
                <tr>
                    <td style="width: 85px"></td>
                    <td style="width: 155px">
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返回" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
