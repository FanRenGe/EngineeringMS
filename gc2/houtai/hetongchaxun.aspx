<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hetongchaxun.aspx.cs" Inherits="houtai_hetongchaxun" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="../css/css.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
                <tr height="30">
                    <td width="3%" background="../Images/topbg.jpg" align="left" style="height: 30px">
                        <img height="16" src="../Images/leader_12.jpg"><b>合同查询</b>					</td>

                </tr>
            </table>
            <br />
            <table>
                <tr>
                    <td>合同</td>
                    <td>
                        <asp:DropDownList runat="server" ID="hetongbianhao" /></td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="查询" OnClick="Button2_OnClick" /></td>
                </tr>
            </table>



            <br />
            <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                DataKeyField="ID" OnPageIndexChanged="DataGrid1_PageIndexChanged"
                Width="800px" CellPadding="3" PageSize="20" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <PagerStyle HorizontalAlign="Left" Mode="NumericPages" VerticalAlign="Middle" BackColor="White" ForeColor="#000066" PageButtonCount="20" />
                <ItemStyle Font-Size="Small" ForeColor="#000066" />
                <Columns>
                    <asp:TemplateColumn HeaderText="合同编号">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink11" runat="server" Font-Underline="False" Target="_blank"
                                Text='<%# Eval("id") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="员工名">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" Target="_blank"
                                Text='<%# Eval("branch") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="客户名">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="False" Target="_blank"
                                Text='<%# Eval("branch2") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="合同名称">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink3" runat="server" Font-Underline="False" Target="_blank"
                                Text='<%# Eval("ming") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="状态">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink4" runat="server" Font-Underline="False" Target="_blank"
                                Text='<%# Eval("zt") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="预算">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink5" runat="server" Font-Underline="False" Target="_blank"
                                Text='<%# Eval("yusuan") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                    <asp:TemplateColumn HeaderText="时间">
                        <ItemTemplate>
                            <asp:HyperLink ID="HyperLink6" runat="server" Font-Underline="False" Target="_blank"
                                Text='<%# Eval("sj") %>'></asp:HyperLink>
                        </ItemTemplate>
                    </asp:TemplateColumn>
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Font-Size="Small" />
            </asp:DataGrid><br />

    </div>
    </form>
</body>
</html>
