<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="admin_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">




<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>员工信息管理系统</title>
    <style type="text/css" title="currentStyle" media="screen">
        #center
        {
            position: absolute;
            top: 50%;
            left: 50%;
            margin-top: -200px;
            margin-left: -300px;
            width: 600px;
            height: 400px;
            border: 1px solid #333333;
        }
    </style>
     <script type="text/javascript">

         function CheckIn() {
             var names = document.getElementById("txtU_Name").value;
             var pass = document.getElementById("txtU_Pass").value;
             var check = document.getElementById("txtU_Check").value;
             if (names == "") {
                 alert("请输入用户名!");
                 document.getElementById("txtU_Name").focus();
                 return false;
             }
             else if (pass == "") {
                 alert("请输入密码!");
                 document.getElementById("txtU_Pass").focus();
                 return false;
             }
             else if (check == "") {
                 alert("请输入验证码!");
                 document.getElementById("txtU_Check").focus();
                 return false;
             }
         }
    </script>
    <style type="text/css">
        body {font:12px Helvetica, Arial, sans-serif;  margin:100px auto; padding:0; background-color:#97d5ee;}
        .login1{background-image: url(image/login_1.jpg); width:960px; height:94px; margin:0 auto;}
        .login2{background-image: url(image/login_2.jpg); width:960px; text-align:center; font-size:40px;  font-weight:bold; color:#fff; line-height:49px; height:49px; margin:0 auto; }
        .login3{background-image: url(image/login_3.jpg); width:960px; height:125px; margin:0 auto;}
        .login4{background-image: url(image/login_4.jpg); width:960px; height:91px; margin:0 auto;}
        .loginTXT{ width:150px;  height:19px;}
         .button{border: 1px solid #f1f8fc;  width:65px;  height:22px; line-height:22px; background:#51bde6; color:#ffffff; font-weight:bold; vertical-align:text-bottom;}
    </style>
  
</head>
<body>
    <form id="form1" runat="server">
     <div class="login1"></div>
    <div class="login2">工程项目管理系统</div>
    <div class="login3">
           <table cellpadding="0" cellspacing="1" border="0" style="margin-left:320px; width:300px;">
    <tr>
        <td>用户名：</td>
        <td><asp:TextBox ID="TextBox1" runat="server" Width="138px"></asp:TextBox></td>
    </tr>
    <tr>
        <td>密码：</td>
        <td><asp:TextBox ID="TextBox2" runat="server" TextMode="Password"  Width="138px"></asp:TextBox> </td>
    </tr>
 <tr>
        <td>类型：</td>
        <td>
             <asp:DropDownList ID="lei" runat="server">
                         <asp:ListItem>管理员</asp:ListItem>
                   
					<asp:ListItem>员工</asp:ListItem>
                    </asp:DropDownList>
        </td>
    </tr>
              
   <tr>
        <td>验证码：</td>
        <td><asp:TextBox ID="TextBox3" runat="server" Width="56px"></asp:TextBox><img src="VerifyCode.aspx?" alt="看不清？点击更换" onclick="this.src=this.src+'?'" style="width: 50px; height: 20px;" />
                         <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox3"
            ErrorMessage="验证码不能为空"></asp:RequiredFieldValidator> </td>
    </tr>
    <tr>
        <td colspan="2"><hr /></td>
    </tr>
    <tr>
        <td></td>
        <td>
             <asp:Button ID="Button1"  CssClass="button" runat="server" OnClick="Button1_Click" Text="登录" />
            &nbsp;<input id="BtnHome" type="reset" value=" 重置 "  class="button"/></td>
    </tr>
   </table>
    </div>
    <div class="login4"></div>
    </form>
</body>
</html>
