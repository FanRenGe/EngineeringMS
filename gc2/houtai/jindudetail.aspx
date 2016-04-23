<%@ Page Language="C#" AutoEventWireup="true" CodeFile="jindudetail.aspx.cs" Inherits="houtai_jindudetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/css.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">

                <tr height="30">

                    <td background="../Images/topbg.jpg" width="100%" style="height: 30px">
                        <img height="16" src="../Images/leader_12.jpg"><b>
                            <asp:Label ID="Label2" runat="server" Text="查看项目进度"></asp:Label></b></td>
                    <td background="../Images/topbg.jpg" align="right" style="height: 30px"></td>
                </tr>
            </table>
            <table style="width: 564px; height: 550px;" border="0">
                <tr>
                    <td style="width: 85px">项目资料名：</td>
                    <td style="width: 155px">
                        <asp:TextBox runat="server" ID="branch" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">项目状态：</td>
                    <td style="width: 155px">
                        <asp:TextBox runat="server" ID="zt" Enabled="False"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">项目备注：</td>
                    <td style="width: 155px">
                        <asp:TextBox ID="beizhu" runat="server" Enabled="False" TextMode="MultiLine" Height="300px" Width="325px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">项目完成<br />百分比：</td>
                    <td style="width: 155px">
                        <asp:TextBox ID="baifen" runat="server" Width="75px" Enabled="False"></asp:TextBox>
                        %</td>
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
