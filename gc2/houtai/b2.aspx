<%@ Page Language="C#" AutoEventWireup="true" CodeFile="b2.aspx.cs" Inherits="Bedrock_b2" %>

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
                            <asp:Label ID="Label2" runat="server" Text="报销导出"></asp:Label></b></td>
                    <td background="../Images/topbg.jpg" align="right" style="height: 30px"></td>
                </tr>
            </table>
            <br />
            <table>
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
                            BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px"
                            CellPadding="3" Font-Size="12px" HorizontalAlign="Center" OnPageIndexChanging="GridView1_PageIndexChanging"
                            PageSize="20" Width="522px" EnableModelValidation="True">
                            <PagerSettings FirstPageText="第一页" LastPageText="最后一页"
                                NextPageText="下一页" PreviousPageText="上一页" />
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <Columns>
                                <asp:BoundField DataField="username" HeaderText="员工姓名" />
                                <asp:BoundField DataField="bao" HeaderText="报销" />

                                <asp:BoundField DataField="fei" HeaderText="费用" />

                                <asp:BoundField DataField="shijian" HeaderText="提交时间" />

                                <asp:BoundField DataField="sf" HeaderText="是否审批" />

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

</body>
</html>
