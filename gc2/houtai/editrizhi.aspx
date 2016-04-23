<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editrizhi.aspx.cs" ValidateRequest="false" Inherits="admin_editrizhi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="../css/css.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">

                <tr height="30">

                    <td background="../Images/topbg.jpg" width="100%" style="height: 30px">
                        <img height="16" src="../Images/leader_12.jpg"><b>
                            <asp:Label ID="Label2" runat="server" Text="项目日志"></asp:Label>
                        </b></td>
                    <td background="../Images/topbg.jpg" align="right" style="height: 30px"></td>
                </tr>
            </table>
            <br />
            <table style="width: 564px; height: 400px;" border="0">
                <tr>
                    <td style="width: 85px">项目资料名：</td>
                    <td style="width: 155px">
                        <asp:DropDownList runat="server" ID="CompanyId1" />
                    </td>
                </tr>

                <tr>
                    <td style="width: 85px">项目日志：</td>
                    <td style="width: 155px">
                        <asp:TextBox ID="rizhi" runat="server" TextMode="MultiLine" Height="300px" Width="325px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td style="width: 85px"></td>
                    <td style="width: 155px">
                        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="添加" />
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="返回" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
