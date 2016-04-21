<%@ Page Language="C#" AutoEventWireup="true" CodeFile="tijiao1.aspx.cs" Inherits="Bedrock_tijiao1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
    <title></title>
      
</head>
<body background='Images/背景2.jpg'>
    <form id="form1" runat="server">
    <div align="center">
        
        
        <table align="center" style="height: 376px" class=css border="6" bordercolordark="#9999999" bordercolorlight="#ffffff" cellspacing="0">
            <tr>
                <td align="center" colspan="2" style="height: 19px; color: white; background-color: #999999;">提交报销申请</td>
            </tr>
           
			 
			<tr>
              <td align="right" style="width: 149px"    >
                                   
                    报销：</td>
              <td style="width: 334px" align="left" ><asp:TextBox ID="bao" runat="server" Width="116px"></asp:TextBox></td>
            </tr>
			 
			<tr>
              <td align="right" style="width: 149px"    >
                                   
                    费用：</td>
              <td style="width: 334px" align="left" ><asp:TextBox ID="shu" runat="server" Width="325px"></asp:TextBox>元<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="只能输入数字" ControlToValidate="shu" ValidationExpression ="^[0-9]*$"></asp:RegularExpressionValidator></td>
            </tr>
			 <tr>
              <td align="right" style="width: 149px"    >
                                
                    提交时间：</td>
                <td style="width: 334px" align="left" >
                    <asp:Calendar ID="shijian" runat="server" Height="1px" Width="12px" BackColor="White" BorderColor="Black" BorderStyle="Solid" CellSpacing="1" Font-Names="Verdana" Font-Size="9pt" ForeColor="Black" NextPrevFormat="ShortMonth">
                        <SelectedDayStyle BackColor="#333399" ForeColor="White" />
                        <TodayDayStyle BackColor="#999999" ForeColor="White" />
                        <DayStyle BackColor="#CCCCCC" />
                        <OtherMonthDayStyle ForeColor="#999999" />
                        <NextPrevStyle Font-Bold="True" Font-Size="8pt" ForeColor="White" />
                        <DayHeaderStyle Font-Bold="True" Font-Size="8pt" ForeColor="#333333" Height="8pt" />
                        <TitleStyle BackColor="#333399" BorderStyle="Solid" Font-Bold="True" Font-Size="12pt"
                            ForeColor="White" Height="12pt" />
                    </asp:Calendar></td>
            </tr>
		
        
			  
			<tr>
                <td style="width: 85px">报销说明：</td>
                <td style="width: 155px"><asp:TextBox ID="sm" runat="server" Width="116px"></asp:TextBox>
        </td>
            </tr>
			
			
            <tr>
                <td align="center" colspan="2" style="height: 34px">
                    <asp:Button ID="Button1" runat="server" Text="　添加　" OnClick="Button1_Click" />
                    <input id="Reset1" type="reset" value="　重置　" />
                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ShowMessageBox="True"
                        ShowSummary="False" />                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
