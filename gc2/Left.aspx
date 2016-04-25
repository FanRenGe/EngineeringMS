<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Left.aspx.cs" Inherits="Left" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>主页左边</title>
    <style type="text/css">
        body {
            font: 12px Arial, Helvetica, sans-serif;
            color: #000;
            background-color: #EEF2FB;
            margin: 0px;
        }

        #container {
            width: 182px;
        }

        H1 {
            font-size: 12px;
            margin: 0px;
            width: 182px;
            height: 30px;
            line-height: 30px;
            color: #000000;
            background-image: url(image/menu_bgs.gif);
            text-align: center;
        }

        .content {
            width: 182px;
        }

        .MM ul {
            list-style-type: none;
            margin: 0px;
            padding: 0px;
            display: block;
        }

        .MM li {
            font-family: Arial, Helvetica, sans-serif;
            font-size: 12px;
            line-height: 26px;
            color: #333333;
            list-style-type: none;
            display: block;
            text-decoration: none;
            height: 26px;
            width: 182px;
            padding-left: 0px;
        }

        .MM {
            width: 182px;
            margin: 0px;
            padding: 0px;
            left: 0px;
            top: 0px;
            right: 0px;
            bottom: 0px;
            clip: rect(0px,0px,0px,0px);
        }

            .MM a:link {
                font-family: Arial, Helvetica, sans-serif;
                font-size: 12px;
                line-height: 26px;
                color: #333333;
                background-image: url(image/menu_bg1.gif);
                background-repeat: no-repeat;
                height: 26px;
                width: 182px;
                display: block;
                text-align: center;
                margin: 0px;
                padding: 0px;
                overflow: hidden;
                text-decoration: none;
            }

            .MM a:visited {
                font-family: Arial, Helvetica, sans-serif;
                font-size: 12px;
                line-height: 26px;
                color: #333333;
                background-image: url(image/menu_bg1.gif);
                background-repeat: no-repeat;
                display: block;
                text-align: center;
                margin: 0px;
                padding: 0px;
                height: 26px;
                width: 182px;
                text-decoration: none;
            }

            .MM a:active {
                font-family: Arial, Helvetica, sans-serif;
                font-size: 12px;
                line-height: 26px;
                color: #333333;
                background-image: url(image/menu_bg1.gif);
                background-repeat: no-repeat;
                height: 26px;
                width: 182px;
                display: block;
                text-align: center;
                margin: 0px;
                padding: 0px;
                overflow: hidden;
                text-decoration: none;
            }

            .MM a:hover {
                font-family: Arial, Helvetica, sans-serif;
                font-size: 12px;
                line-height: 26px;
                font-weight: bold;
                color: #000000;
                background-repeat: no-repeat;
                text-align: center;
                display: block;
                margin: 0px;
                padding: 0px;
                height: 26px;
                width: 182px;
                text-decoration: none;
            }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table width="100%" height="280" border="0" cellpadding="0" cellspacing="0" bgcolor="#EEF2FB">
            <tr>
                <td width="182" valign="top">
                    <div id="container">


                        <% if (Session["UserType"].ToString() == "yg")
                           { %>
                        <h1>所有菜单</h1>
                        <div class="content">
                            <ul class="MM">

                                <li><a href="houtai/tijiao.aspx" target="main">预算申请</a></li>
                                <li><a href="houtai/tijiaodetail.aspx" target="main">预算申请查询</a></li>
                                <li><a href="houtai/tijiao1.aspx" target="main">报销申请</a></li>
                                <li><a href="houtai/tijiaodetail1.aspx" target="main">报销申请查询</a></li>
                                <li><a href="houtai/jinduchakan.aspx" target="main">项目进度查看</a></li>
                            </ul>
                        </div>
                        <%} %>

                        <% if (Session["UserType"].ToString() == "user")
                           { %>


                        <h1>进度管理</h1>
                        <div class="content">
                            <ul class="MM">

                                <li><a href="houtai/addyg.aspx" target="main">员工录入</a></li>
                                <li><a href="houtai/yg.aspx" target="main">员工信息</a></li>
                                <li><a href="houtai/zu.aspx" target="main">小组信息添加</a></li>
                                <li><a href="houtai/zuxs.aspx" target="main">小组信息管理</a></li>
                                <li><a href="houtai/zl.aspx" target="main">项目资料</a></li>
                                <li><a href="houtai/jindu.aspx" target="main">项目进度</a></li>
                                <li><a href="houtai/rizhi.aspx" target="main">项目日志</a></li>
                                <li><a href="houtai/xiangmuchaxun.aspx" target="main">项目查询</a></li>
                            </ul>
                        </div>
                        <h1>合同管理</h1>
                        <div class="content">
                            <ul class="MM">

                                <li><a href="houtai/addkehu.aspx" target="main">客户录入</a></li>
                                <li><a href="houtai/kehu.aspx" target="main">客户管理</a></li>
                                <li><a href="houtai/edithetong.aspx" target="main">添加合同信息</a></li>
                                <li><a href="houtai/hetong.aspx" target="main">合同信息</a></li>
                                <li><a href="houtai/b3.aspx" target="main">合同信息导出</a></li>


                            </ul>
                        </div>
                        <h1>费用管理</h1>
                        <div class="content">
                            <ul class="MM">

                                <li><a href="houtai/pingce.aspx" target="main">审批预算</a></li>
                                <li><a href="houtai/b1.aspx" target="main">预算导出</a></li>
                                <li><a href="houtai/pingce1.aspx" target="main">审批报销</a></li>
                                <li><a href="houtai/b2.aspx" target="main">报销导出</a></li>
                                <li><a href="houtai/addshouru.aspx" target="main">添加收入</a></li>
                                <li><a href="houtai/shouru.aspx" target="main">收入管理</a></li>
                            </ul>
                        </div>
                        <%} %>
                    </div>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
