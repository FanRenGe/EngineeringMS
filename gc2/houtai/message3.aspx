<%@ Page Language="C#" AutoEventWireup="true" CodeFile="message3.aspx.cs" Inherits="ax_message3" %>


<%@ Register Assembly="AspNetPager" Namespace="Wuqi.Webdiyer" TagPrefix="webdiyer" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title><link href="Admin_STYLE.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
   
   
 
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
                <asp:BoundColumn HeaderText="上传员工" DataField="xs">
                </asp:BoundColumn>
              
               
                <asp:BoundColumn HeaderText="项目资料名" DataField="name">
                </asp:BoundColumn>
				<asp:BoundColumn HeaderText="作者" DataField="zuo">
                </asp:BoundColumn>
              	<asp:BoundColumn HeaderText="专业" DataField="zy">
                </asp:BoundColumn>
				<asp:BoundColumn HeaderText="是否同意" DataField="shenhe">
                </asp:BoundColumn>
                <asp:ButtonColumn CommandName="Delete" HeaderText="管理" Text="查看">
                    <HeaderStyle Width="40px" />
                </asp:ButtonColumn>
            </Columns>
        </asp:DataGrid>&nbsp;</td>
  </tr>
  <tr><td>
  <table width=100% border=0 style="background-color: #4adef2"><tr>  <td align=left style="height: 26px">     <asp:Button ID="Button1" runat="server" Text="删除" OnClick="Button1_Click" /></td><TD align=center style="height: 26px" class="title1">  <webdiyer:AspNetPager ID="AspNetPager1" runat="server" NumericButtonTextFormatString="[{0}]" OnPageChanged="AspNetPager1_PageChanged">
        </webdiyer:AspNetPager>
            </TD> </tr></table>
  
      
    
    </td></tr>
  <tr>
    <td align=center >
        </td>
  </tr>
 
</table>　
   
   
    </form>
</body>
</html>
