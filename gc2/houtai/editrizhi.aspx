<%@ Page Language="C#" AutoEventWireup="true" CodeFile="editrizhi.aspx.cs" ValidateRequest="false" Inherits="admin_editrizhi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="Admin_STYLE.css" rel="stylesheet" type="text/css">
</head>

<form id="form1" runat="server">
    <div>
        <span style="font-size: 14px">项目日志<br />
        </span>
        <table style="width: 564px; height: 572px;" border="0">
            <tr>
                <td style="width: 85px">项目资料名：</td>
                <td style="width: 155px">
                    <asp:dropdownlist id="CompanyId1" runat="server">                    </asp:dropdownlist>
                </td>
            </tr>

            <tr>
                <td style="width: 85px">项目日志：</td>
                <td style="width: 155px">
                    <asp:textbox id="rizhi" runat="server" textmode="MultiLine" height="300px" width="325px"></asp:textbox>
                </td>
            </tr>

            <tr>
                <td style="width: 85px"></td>
                <td style="width: 155px">
                    <asp:button id="Button2" runat="server" onclick="Button2_Click" text="添加" />
                    <asp:button id="Button3" runat="server" onclick="Button3_Click" text="返回" />
                </td>
            </tr>
        </table>
    </div>
</form>
</body>
</html>
