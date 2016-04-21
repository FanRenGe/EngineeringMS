<%@ Page Language="C#" AutoEventWireup="true" CodeFile="b2.aspx.cs" Inherits="Bedrock_b2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title>无标题页</title>
</head>
<body>
    <form id="form1" runat="server">
      <div align="center">
       
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False"
            BackColor="White" BorderColor="#3366CC" BorderStyle="Solid" BorderWidth="1px"
            CellPadding="4" Font-Size="12px" HorizontalAlign="Center" OnPageIndexChanging="GridView1_PageIndexChanging" 
            PageSize="20" Width="522px" >
            <PagerSettings FirstPageText="第一页" LastPageText="最后一页" Mode="NextPreviousFirstLast"
                NextPageText="下一页" PreviousPageText="上一页" />
            <FooterStyle BackColor="#EFEFEF" ForeColor="#003399" />
            <Columns>
                <asp:BoundField DataField="username" HeaderText="员工姓名" />
				   <asp:BoundField DataField="bao" HeaderText="报销" />
              
                <asp:BoundField DataField="fei" HeaderText="费用" />
              
				 <asp:BoundField DataField="shijian" HeaderText="提交时间" />
				 
            	 <asp:BoundField DataField="sf" HeaderText="是否审批" />
                
            </Columns>
            <RowStyle ForeColor="#003399" />
            <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
            <PagerStyle BackColor="#EFEFEF" ForeColor="#003399" HorizontalAlign="Right" />
            <HeaderStyle BackColor="#003399" BorderStyle="None" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="#EFEFFF" />
        </asp:GridView>
    
    </div>
	
	
	<asp:Button ID="btnGridView" runat="server" onclick="btnGridView_Click" 
            Text="导出到EXCEL" />
    </form>
    <p>&nbsp;</p>
	
</body>
</html>
