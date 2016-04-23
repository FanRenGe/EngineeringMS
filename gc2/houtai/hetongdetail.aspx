<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hetongdetail.aspx.cs" Inherits="houtai_hetongdetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../css/css.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">

                <tr height="30">

                    <td background="../Images/topbg.jpg" width="100%" style="height: 30px">
                        <img height="16" src="../Images/leader_12.jpg"><b>
                            <asp:Label ID="Label2" runat="server" Text="查看合同信息"></asp:Label></b></td>
                    <td background="../Images/topbg.jpg" align="right" style="height: 30px"></td>
                </tr>
            </table>
            <br />
            <table style="width: 564px; height: 572px;" border="0">
                <tr>
                    <td style="width: 85px">员工名：</td>
                    <td style="width: 155px">
                        <asp:TextBox runat="server" ID="branch" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">客户名：</td>
                    <td style="width: 155px">
                        <asp:TextBox runat="server" ID="branch2" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">合同名称：</td>
                    <td style="width: 155px">
                        <asp:TextBox ID="ming" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">状态：</td>
                    <td style="width: 155px">
                        <asp:TextBox runat="server" ID="zt" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">预算：</td>
                    <td style="width: 155px">
                        <asp:TextBox ID="yusuan" runat="server" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">时间：</td>
                    <td style="width: 155px">
                        <asp:TextBox ID="sj" runat="server" Enabled="False"></asp:TextBox>
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
