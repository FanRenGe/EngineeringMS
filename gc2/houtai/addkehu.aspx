<%@ Register TagPrefix="xxxytime" Namespace="WebControlLibrary" Assembly="WebControlLibrary" %>

<%@ Page Language="C#" AutoEventWireup="true" CodeFile="addkehu.aspx.cs" Inherits="Info_addkehu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="../css/css.css" type="text/css" rel="stylesheet" />

</head>
<body>
    <form id="form1" runat="server">

        <div>
            <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">

                <tr height="30">

                    <td background="../Images/topbg.jpg" width="100%" style="height: 30px">
                        <img height="16" src="../Images/leader_12.jpg"><b>
                            <asp:Label ID="Label2" runat="server" Text="添加客户新"></asp:Label></b></td>
                    <td background="../Images/topbg.jpg" align="right" style="height: 30px"></td>
                </tr>
            </table>
            <table align="left" style="width: 560px; height: 400px">

                <asp:Panel ID="MyPanel" runat="server" Visible="true">



                    <tr>
                        <td width="100">客户姓名：</td>
                        <td>
                            <asp:TextBox ID="username" runat="server"></asp:TextBox><asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="username"
                                ErrorMessage="必填"></asp:RequiredFieldValidator></td>
                    </tr>

                </asp:Panel>


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
                    <td>编号：</td>
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
                        <asp:DropDownList runat="server" ID="jibie">
                            <asp:ListItem>组员</asp:ListItem>
                            <asp:ListItem>组长</asp:ListItem>
                            <asp:ListItem>经理</asp:ListItem>
                        </asp:DropDownList>
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
