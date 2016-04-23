<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hetongdetail.aspx.cs" Inherits="houtai_hetongdetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <span style="font-size: 14px">合同信息<br />
            </span>
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
