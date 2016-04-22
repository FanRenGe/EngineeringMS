<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editjindu.aspx.cs" ValidateRequest="false" Inherits="admin_editjindu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="Admin_STYLE.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <br />
            <span style="font-size: 14px">项目进度<br />
            </span>
            <br />
            <table style="width: 564px; height: 572px;" border="0">
                <tr>
                    <td style="width: 85px">项目资料名：</td>
                    <td style="width: 155px">
                        <asp:DropDownList ID="CompanyId1" runat="server"></asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">项目状态：</td>
                    <td style="width: 155px">
                        <asp:TextBox ID="zt" runat="server" Width="325px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">项目备注：</td>
                    <td style="width: 155px">
                        <asp:TextBox ID="beizhu" runat="server" TextMode="MultiLine" Height="300px" Width="325px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="width: 85px">项目完成百分比：</td>
                    <td style="width: 155px">
                        <asp:TextBox ID="baifen" runat="server" Width="75px"></asp:TextBox>
                        %</td>
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
