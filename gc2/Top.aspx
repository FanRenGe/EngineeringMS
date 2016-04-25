﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Top.aspx.cs" Inherits="Top" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>主页头部</title>
    <link href="css/Base.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="TopBack">
    <div  class="TopTitle">工程项目管理系统</div>
        <div class="TopMes">
            登录用户：<font color="red"><%= Session["UserName"]%></font>&nbsp;&nbsp;&nbsp;当前日期：<font color="red"><%=DateTime.Now.ToLongDateString()%></font>&nbsp;
         <a href="/houtai/pass.aspx" target="main"
                style="color: #fff;">[修改密码]</a>&nbsp;&nbsp;
            <asp:LinkButton ID="LBQuit" runat="server" Font-Bold="True" ForeColor="White" OnClick="LBQuit_Click"
                OnClientClick='return confirm("你确定退出系统吗？") '>[退出]</asp:LinkButton>
        </div>
    </div>
    </form>
</body>
</html>