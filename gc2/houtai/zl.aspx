<%@ Page Language="C#" AutoEventWireup="true" CodeFile="zl.aspx.cs" Inherits="admin_zl" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="Admin_STYLE.css" rel="stylesheet" type="text/css">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
                 <tr height="30">
                    <td width="3%" background="../Images/topbg.jpg" align="left" style="height: 30px">
                         <img height="16" src="../Images/leader_12.jpg"><b>项目资料</b>					</td>

                </tr>
            </table>
           <%-- <table width="200" height="3" border="0" cellpadding="0" cellspacing="0">
                <tr>
                    <td height="3"></td>
                </tr>
            </table>--%>
            <asp:Button ID="Button2" runat="server" Text="添加" OnClick="Button2_OnClick" />
            <%--<asp:LinkButton ID="LinkButton1" runat="server" BackColor="#FFFF33" Font-Bold="True"
                Font-Italic="False" Font-Names="宋体" Font-Size="14pt" Font-Underline="False" ForeColor="Navy"
                OnClick="LinkButton1_Click">添加</asp:LinkButton><a href="editweihu.aspx"><strong><span style="color: #ff0066"></span></strong></a>--%>
            <br />
            <br />
            <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                DataKeyField="ID" OnItemCommand="DataGrid1_ItemCommand" OnPageIndexChanged="DataGrid1_PageIndexChanged" OnItemDataBound="DataGrid1_OnItemDataBound"
                Width="800px" CellPadding="3" PageSize="20" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <PagerStyle HorizontalAlign="Left" Mode="NumericPages" VerticalAlign="Middle" BackColor="White" ForeColor="#000066" PageButtonCount="20" />
                <ItemStyle Font-Size="Small" ForeColor="#000066" />
                <Columns>
                     <asp:TemplateColumn>
                        <ItemTemplate>
                            <asp:CheckBox ID="CheckBox1" runat="server" />
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="项目名">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="False" Target="_blank"
                                Text='<%# Eval("ming") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="小组">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" Target="_blank"
                                Text='<%# Eval("branch") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:BoundColumn HeaderText="项目负责人" DataField="zuzhang"/>
                    <asp:TemplateColumn HeaderText="项目预算资金">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink4" runat="server" Font-Underline="False" Target="_blank"
                                Text='<%# Eval("zijin") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="计划开始时间">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink5" runat="server" Font-Underline="False" Target="_blank"
                                Text='<%# Eval("kaishi") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="计划结束时间">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink6" runat="server" Font-Underline="False" Target="_blank"
                                Text='<%# Eval("jieshu") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>

                    <asp:TemplateColumn HeaderText="是否审核">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="False" Target="_blank"
                                Text='<%# Eval("shenhe") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:ButtonColumn CommandName="Detail" Text="查看" HeaderText="查看"></asp:ButtonColumn>
                    <asp:ButtonColumn CommandName="Select" Text="编辑" HeaderText="编辑"></asp:ButtonColumn>
                   <asp:ButtonColumn CommandName="Delete" Text="删除" HeaderText="删除" ></asp:ButtonColumn>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Font-Size="Small" />
            </asp:DataGrid><br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="删除所选" />
        </div>



    </form>
</body>
</html>
