<%@ Page Language="C#" AutoEventWireup="true" CodeFile="shouzhi.aspx.cs" Inherits="houtai_shouzhi" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="../css/css.css" rel="stylesheet" />
    <link href="../My97DatePicker/skin/WdatePicker.css" rel="stylesheet" />
    <script type="text/javascript" src="../My97DatePicker/WdatePicker.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
                <tr height="30">
                    <td width="3%" background="../Images/topbg.jpg" align="left" style="height: 30px">
                        <img height="16" src="../Images/leader_12.jpg"><b>收支查询</b>					</td>

                </tr>
            </table>
            <br />

            <table style="padding: 5px">
                <tr>
                    <td>开始时间</td>
                    <td>
                        <asp:TextBox ID="kaishi" runat="server" Width="90px" class="Wdate" onFocus="WdatePicker()"></asp:TextBox></td>

                    <td>结束时间</td>
                    <td>
                        <asp:TextBox ID="jieshu" runat="server" Width="90px" class="Wdate" onFocus="WdatePicker()"></asp:TextBox>
                    </td>

                    <td style="width: 70px;" align="right">
                        <asp:Button runat="server" ID="btnSearch" Text="查询" OnClick="btnSearch_Click" /></td>
                </tr>
                <tr>
                    <td colspan="5" >
                        <br />
                        <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False"
                            Width="400px" CellPadding="3" PageSize="20" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                            <PagerStyle HorizontalAlign="Left" Mode="NumericPages" VerticalAlign="Middle" BackColor="White" ForeColor="#000066" PageButtonCount="20" />
                            <ItemStyle Font-Size="Small" ForeColor="#000066" />
                            <Columns>

                                <asp:TemplateColumn HeaderText="收入总和">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink11" runat="server" Font-Underline="False" Target="_blank"
                                            Text='<%# Eval("shouru") %>'></asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateColumn>
                                <asp:TemplateColumn HeaderText="支出总和">
                                    <ItemTemplate>
                                        <asp:HyperLink ID="HyperLink1" runat="server" Font-Underline="False" Target="_blank"
                                            Text='<%# Eval("zhichu") %>'></asp:HyperLink>
                                    </ItemTemplate>
                                </asp:TemplateColumn>

                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Font-Size="Small" />
                        </asp:DataGrid>
                    </td>
                </tr>
            </table>


        </div>
    </form>
</body>
</html>
