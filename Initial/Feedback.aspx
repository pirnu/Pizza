<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #form1
        {
            width: 962px;
        }
        .style1
        {
            width: 1026px;
            height: 510px;
            margin-left: 80px;
        }
        .style2
        {
            width: 136px;
            height: 78px;
        }
    </style>
</head>
<body style="height: 469px">
    <form id="form1" runat="server">
    <p class="style1" dir="ltr">
        <asp:Button ID="Home1" runat="server" PostBackUrl="~/Default.aspx" 
        Text="Home" BackColor="#FF6600" BorderColor="Black" BorderStyle="Double" 
            Font-Bold="True" Font-Size="16pt" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Order1" runat="server" PostBackUrl="~/Order.aspx" 
        Text="Order" BackColor="#FF6600" BorderColor="Black" BorderStyle="Double" 
            Font-Bold="True" Font-Size="16pt" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Menu1" runat="server" PostBackUrl="~/Menu.aspx" Text="Menu" 
            BackColor="#FF6600" BorderColor="Black" BorderStyle="Double" Font-Bold="True" 
            Font-Size="16pt" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Coupons1" runat="server" PostBackUrl="~/Coupons.aspx" 
        Text="Coupons" BackColor="#FF6600" BorderColor="Black" BorderStyle="Double" 
            Font-Bold="True" Font-Size="16pt" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="About1" runat="server" PostBackUrl="~/About.aspx" 
        Text="About" BackColor="#FF6600" BorderColor="Black" BorderStyle="Double" 
            Font-Bold="True" Font-Size="16pt" />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Feedback1" runat="server" PostBackUrl="~/Feedback.aspx" 
        Text="Feedback" BackColor="#FF6600" BorderColor="Black" BorderStyle="Double" 
            Font-Bold="True" Font-Size="16pt" ForeColor="White" />
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
       <asp:Label ID="Label1" runat="server" Text="Feedback From:" Visible="False"></asp:Label>
        <asp:Label ID="namelabel" runat="server" Visible="False"></asp:Label>
        <br />
        <br />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="fbtext" runat="server" Height="65px" TextMode="MultiLine" 
            Width="301px" Visible="False" ontextchanged="fbtext_TextChanged"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <br />
&nbsp;&nbsp;&nbsp;&nbsp;<img class="style2" src="Images/Feedback%20logo.GIF" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Click Here to View Customer Feedback" Width="401px" BackColor="Blue" 
            BorderColor="Black" BorderStyle="Solid" Font-Bold="True" Font-Size="16pt" 
            ForeColor="White" Height="49px" />
    
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        </p>
    <p class="style1" align="center">
    
        We appreciate your feedback!!<br />
        <br />
        Name:<br />
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <br />
        <br />
        Feedback:<br />
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <br />
    
        <br />
        <asp:Button ID="Feedbackbut" runat="server" onclick="Feedbackbut_Click" 
            Text="Submit" />
    
        <br />
        **Please note that feedback must await moderator approval to be displayed**</p>
    </form>

</body>
</html>
