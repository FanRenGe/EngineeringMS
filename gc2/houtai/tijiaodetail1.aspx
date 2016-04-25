<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tijiaodetail1.aspx.cs" Inherits="houtai_tijiaodetail1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <table width="100%" height="25" border="0" cellpadding="0" cellspacing="0">
                <tr height="30">
                    <td width="3%" background="../Images/topbg.jpg" align="left" style="height: 30px">
                        <img height="16" src="../Images/leader_12.jpg"><b>报销申请查询</b>					</td>

                </tr>
            </table>


            <br />
            <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                DataKeyField="ID" 
                Width="800px" CellPadding="3" PageSize="20" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px">
                <PagerStyle HorizontalAlign="Left" Mode="NumericPages" VerticalAlign="Middle" BackColor="White" ForeColor="#000066" PageButtonCount="20" />
                <ItemStyle Font-Size="Small" ForeColor="#000066" />
                <Columns>
                    <asp:BoundColumn HeaderText="报销" DataField="bao" />
                    <asp:BoundColumn HeaderText="费用" DataField="fei" />
                    <asp:BoundColumn HeaderText="提交时间" DataField="shijian" />
                    <asp:BoundColumn HeaderText="提交人" DataField="username" />
                    <asp:BoundColumn HeaderText="报销说明" DataField="sm" />
                    <asp:BoundColumn HeaderText="是否通过" DataField="sf" />
                    <asp:BoundColumn HeaderText="审批意见" DataField="yijian" />
                </Columns>
                <FooterStyle BackColor="White" ForeColor="#000066" />
                <SelectedItemStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" Font-Size="Small" />
            </asp:DataGrid>
        </div>
    </form>
</body>
</html>
