<%@ Register TagPrefix="xxxytime" Namespace="WebControlLibrary" Assembly="WebControlLibrary" %>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addyg.aspx.cs" Inherits="Info_addyg" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="../css.css" type="text/css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">

        <div style="font-size: 9pt">
            <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">

                <tr height="30">

                    <td background="../Images/topbg.jpg" width="80" style="height: 30px"><b>
                        <asp:Label ID="Label2" runat="server" Text="添加"></asp:Label></b></td>
                    <td background="../Images/topbg.jpg" align="right" style="height: 30px"></td>
                </tr>
            </table>
            <table align="center" style="width: 560px; height: 513px">

                <asp:Panel ID="MyPanel" runat="server" Visible="true">



                    <tr>
                        <td width="100">员工姓名：</td>
                        <td>
                            <asp:TextBox ID="username" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username"
                                ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                    </tr>
                    <tr>
                        <td>员工密码：</td>
                        <td style="width: 100px">
                            <asp:TextBox ID="TextBox1" runat="server" TextMode="Password"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox1"
                                ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                    </tr>
                </asp:Panel>

                <tr>
                    <td>所属小组：</td>
                    <td>
                        <asp:DropDownList ID="zu" runat="server"></asp:DropDownList></td>
                </tr>

                <tr>
                    <tr>
                        <td>QQ：</td>
                        <td>
                            <asp:TextBox ID="qq" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="qq"
                                ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                    </tr>

                    <tr>
                        <td>电话：</td>
                        <td>
                            <asp:TextBox ID="dh" runat="server"></asp:TextBox></td>
                    </tr>
                    <tr>
                        <td>工号：</td>
                        <td>
                            <asp:TextBox ID="hao" runat="server"></asp:TextBox></td>
                    </tr>

                    <tr>
                        <td>性别：</td>
                        <td>
                            <asp:DropDownList ID="xingbie" runat="server">
                                <asp:ListItem>男</asp:ListItem>
                                <asp:ListItem>女</asp:ListItem>
                            </asp:DropDownList></td>
                    </tr>
                    <tr>
                        <td>职位：</td>
                        <td>
                            <asp:TextBox ID="jibie" runat="server"></asp:TextBox>
                        </td>
                    </tr>



                    <tr>
                        <td align="center" colspan="4">
                            <asp:Button ID="Button1" CssClass="BnCss" runat="server" Text="添   加" Width="54px" OnClick="Button1_Click" />
                            <asp:Button ID="Button3" CssClass="BnCss" runat="server" Text="修  改" Visible="False" Width="53px" OnClick="Button3_Click" />
                            <asp:Button ID="Button4" CssClass="BnCss" runat="server" Text="退  出" OnClick="Button4_Click" Width="50px" /></td>
                    </tr>
            </table>

        </div>
    </form>
</body>
</html>
