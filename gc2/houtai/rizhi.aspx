<%@ Page Language="C#" AutoEventWireup="true" CodeFile="rizhi.aspx.cs" Inherits="admin_rizhi" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head id="Head1" runat="server">
    <title>无标题页</title>
    <link href="Admin_STYLE.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"></head>
<body>
<table width="485" height="5" border="0" cellpadding="0" cellspacing="0">
  <tr>
    <td height="5"></td>
  </tr>
</table>
<table width="800" height="80" border="0" cellpadding="0" cellspacing="0">
   
</table>
    <form id="form1" runat="server">
    <div>
      <table width="800" height="25" border="0" cellpadding="0" cellspacing="0">
        <tr>
          <td bgcolor="#F7F5F8"><span class="style1">&nbsp;&nbsp;&nbsp;&nbsp;项目日志：</span> </td>
        </tr>
      </table>
      <table width="200" height="3" border="0" cellpadding="0" cellspacing="0">
          <tr>
            <td height="3"></td>
          </tr>
      </table>
        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="#FFFF33" Font-Bold="True"
            Font-Italic="False" Font-Names="宋体" Font-Size="14pt" Font-Underline="False" ForeColor="Navy"
            OnClick="LinkButton1_Click">添加</asp:LinkButton><a href="editweihu.aspx"><strong><span style="color: #ff0066"></span></strong></a> <br /> <br />
        <asp:DataGrid ID="DataGrid1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            DataKeyField="ID" OnItemCommand="DataGrid1_ItemCommand" OnPageIndexChanged="DataGrid1_PageIndexChanged"
            Width="800px" CellPadding="4" ForeColor="#333333" GridLines="None" PageSize="20">
          <pagerstyle HorizontalAlign="Center" Mode="NumericPages" VerticalAlign="Middle" BackColor="#2461BF" ForeColor="White" PageButtonCount="20" />        
          <itemstyle Font-Size="Small" BackColor="#EFF3FB" />        
          <columns>
          <asp:TemplateColumn HeaderText="项目名">
            <itemtemplate>
              <asp:HyperLink ID="HyperLink2" runat="server" Font-Underline="False" Target="_blank" 
                            Text='<%# Eval("branch") %>'></asp:HyperLink>
            </itemtemplate>
          </asp:TemplateColumn>
         
         
		     <asp:ButtonColumn CommandName="Select" Text="编辑"></asp:ButtonColumn>
                <asp:TemplateColumn>
                    <ItemTemplate>
                        <asp:CheckBox ID="CheckBox1" runat="server" />
                    </ItemTemplate>
                </asp:TemplateColumn>
          </columns>
          <footerstyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />        
          <edititemstyle BackColor="#2461BF" />        
          <selecteditemstyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />        
          <alternatingitemstyle BackColor="White" />        
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" Font-Size="Small" />
      </asp:DataGrid><br />  <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="删除所选" />
    </div>
      
     
       
    </form>
</body>
</html>
