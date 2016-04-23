<%@ Page Language="C#" AutoEventWireup="true" CodeFile="b3.aspx.cs" Inherits="Bedrock_b3" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>无标题页</title>
    <link href="../css/css.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <div>

            <table border="0" cellpadding="0" cellspacing="0" bordercolor="#111111" width="100%">

                <tr height="30">

                    <td background="../Images/topbg.jpg" width="100%" style="height: 30px">
                        <img height="16" src="../Images/leader_12.jpg"><b>
                            <asp:Label ID="Label2" runat="server" Text="导出合同信息"></asp:Label></b></td>
                    <td background="../Images/topbg.jpg" align="right" style="height: 30px"></td>
                </tr>
            </table>
            <br />
            <table>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                            CellPadding="3" Font-Size="12px" HorizontalAlign="Left" OnPageIndexChanging="GridView1_PageIndexChanging"
                            PageSize="20" Width="522px" EnableModelValidation="True">
                            <PagerSettings FirstPageText="第一页" LastPageText="最后一页"
                                NextPageText="下一页" PreviousPageText="上一页" />
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <Columns>
                                <asp:BoundField DataField="branch" HeaderText="员工名" />
                                <asp:BoundField DataField="branch2" HeaderText="客户名" />

                                <asp:BoundField DataField="ming" HeaderText="合同名称" />

                                <asp:BoundField DataField="zt" HeaderText="状态" />

                                <asp:BoundField DataField="yusuan" HeaderText="预算" />
                                <asp:BoundField DataField="sj" HeaderText="时间" />

                            </Columns>
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <HeaderStyle BackColor="#006699" BorderStyle="None" Font-Bold="True" ForeColor="White" />
                        </asp:GridView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="btnGridView" runat="server" OnClick="btnGridView_Click"
                            Text="导出到EXCEL" />
                    </td>
                </tr>
            </table>

        </div>


    </form>
    <p>&nbsp;</p>

</body>
</html>
