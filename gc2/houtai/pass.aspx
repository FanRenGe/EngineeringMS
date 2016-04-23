<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pass.aspx.cs" Inherits="admin_pass" %>



<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    
    <style type="text/css">
        <!--
        body {
            margin-top: 0px;
        }

        .style1 {
            font-size: 14px;
        }
        -->
    </style>
</head>
<body>
    <table width="485" height="5" border="0" cellpadding="0" cellspacing="0">
        <tr>
            <td height="5"></td>
        </tr>
    </table>


    <form id="form1" runat="server">
         <div>

            <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">

                <tr height="30">

                    <td background="../Images/topbg.jpg" width="100%" style="height: 30px;font-size: 12px">
                        <img height="16" src="../Images/leader_12.jpg"><b>
                            <asp:Label ID="Label2" runat="server" Text="修改密码"></asp:Label></b></td>
                    <td background="../Images/topbg.jpg" align="right" style="height: 30px"></td>
                </tr>
            </table>

            <table width="200" height="3" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="3"></td>
                </tr>
            </table>
            <table border="0" cellpadding="2" cellspacing="2" style="width: 620px">
                <tr>
                    <td align="center" style=" width: 98px;">
                        <span class="style1"><strong><span style="color: #ff0099">原始密码：</span></strong></span></td>
                    <td style="width: 168px">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                            ErrorMessage="必须输入" Font-Size="Small"></asp:RequiredFieldValidator></td>
                </tr>
                <tr>
                    <td align="center" style="  width: 98px;">
                        <span class="style1"><strong><span style="color: #ff0099">新 密 码：</span></strong></span></td>
                    <td style="color: #000000; width: 168px;">
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" Display="Dynamic"
                            ErrorMessage="必须输入" ControlToValidate="TextBox2"></asp:RequiredFieldValidator></td>
                </tr>
                <tr style="color: #000000">
                    <td align="center" style="  width: 98px;">
                        <span class="style1" style="color: #ff0099"><strong>确认密码：</strong></span></td>
                    <td style="width: 168px">
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox></td>
                    <td>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="必须输入" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" Display="Dynamic" ErrorMessage="不一致" ControlToCompare="TextBox2" ControlToValidate="TextBox3"></asp:CompareValidator></td>
                </tr>
            </table>
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="确认修改" />
            &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
        &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;
        
       
        &nbsp;
        </div>
    </form>
</body>
</html>
