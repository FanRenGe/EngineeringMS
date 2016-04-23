<%@ Page Language="C#" AutoEventWireup="true" CodeFile="kehu.aspx.cs" Inherits="Info_kehu" %>



<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="../css.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" width="100%">

                <tr height="30">
                    <td width="3%" background="../Images/topbg.jpg" align="left" style="height: 30px">
                        <img height="16" src="../Images/leader_12.jpg"><b>列表</b>					</td>

                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label></td>
                </tr>

                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" Height="71px" Width="798px" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" AutoGenerateColumns="False" DataKeyNames="Employeeid" OnRowDataBound="GridView1_RowDataBound1" OnRowDeleting="GridView1_RowDeleting1" OnRowEditing="GridView1_RowEditing">
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <Columns>
                                <asp:BoundField DataField="username" HeaderText="姓名" />

                                <asp:CommandField EditText="查看" HeaderText="查看" SelectText="查看" ShowSelectButton="True" Visible="false" />
                                <asp:CommandField EditText="修改" HeaderText="修改" ShowEditButton="True" />
                                <asp:CommandField HeaderText="删除" ShowDeleteButton="True" />
                            </Columns>
                        </asp:GridView>

                    </td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
