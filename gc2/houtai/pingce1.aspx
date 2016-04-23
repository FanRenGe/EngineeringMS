<%@ Page Language="C#" AutoEventWireup="true" CodeFile="pingce1.aspx.cs" Inherits="ax_pingce1" %>


<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="Admin_STYLE.css" rel="stylesheet" type="text/css">
    <link href="../css/css.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
            <tr height="30">
                <td width="3%" background="../Images/topbg.jpg" align="left" style="height: 30px">
                    <img height="16" src="../Images/leader_12.jpg"><b>审批报销</b>					</td>

            </tr>
        </table>


        <br />

        <table width="100%" height="31" border="0" cellpadding="0" cellspacing="0">

            <tr>
                <td height="29" align="center" valign="top">
                    <asp:DataGrid ID="DataGrid1" runat="server" AutoGenerateColumns="False" BackColor="White"
                        BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" Height="100%"
                        Width="100%" DataKeyField="id" OnDeleteCommand="DataGrid1_DeleteCommand">
                        <FooterStyle BackColor="White" ForeColor="#000066" />
                        <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" Mode="NumericPages" />
                        <ItemStyle ForeColor="#000066" />
                        <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                        <Columns>
                            <asp:TemplateColumn HeaderText="删除">
                                <ItemTemplate>
                                    <asp:CheckBox ID="CheckBox1" runat="server" />
                                </ItemTemplate>
                                <HeaderStyle Width="30px" />
                            </asp:TemplateColumn>
                            <asp:BoundColumn HeaderText="员工姓名" DataField="username"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="报销" DataField="bao"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="费用" DataField="fei"></asp:BoundColumn>

                            <asp:BoundColumn HeaderText="提交时间" DataField="shijian"></asp:BoundColumn>
                            <asp:BoundColumn HeaderText="是否审批" DataField="sf"></asp:BoundColumn>
                            <asp:ButtonColumn CommandName="Delete" HeaderText="管理" Text="审批">
                                <HeaderStyle Width="40px" />
                            </asp:ButtonColumn>
                        </Columns>
                    </asp:DataGrid></td>
            </tr>
            <tr>
                <td>
                    <table width="100%" border="0">
                        <tr>
                            <td align="left" style="height: 26px">
                                <asp:Button ID="Button1" runat="server" Text="删除" OnClick="Button1_Click" /></td>
                            <td align="center" style="height: 26px" class="title1">
                                <webdiyer:AspNetPager ID="AspNetPager1" runat="server" NumericButtonTextFormatString="[{0}]" OnPageChanged="AspNetPager1_PageChanged">
                                </webdiyer:AspNetPager>
                            </td>
                        </tr>
                    </table>



                </td>
            </tr>
            <tr>
                <td align="center"></td>
            </tr>

        </table>
        <p align="center">
            总的花费为
            <asp:TextBox ID="gg" Width="45" runat="server"></asp:TextBox>
            元
        </p>


    </form>
</body>
</html>
