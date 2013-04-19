<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="About" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 170px;
            height: 146px;
        }
        .style4
        {
            width: 275px;
            height: 172px;
            margin-top: 0px;
        }
        .style5
        {
            width: 291px;
            height: 172px;
        }
        .style6
        {
            width: 483px;
            height: 204px;
        }
    </style>
</head>
<body bgcolor="#336600" style="height: 561px; width: 960px">
    <form id="form1" runat="server">
    <div align="center" style="width: 949px; height: 566px">
    
        <asp:Button ID="Home1" runat="server" PostBackUrl="~/Default.aspx" 
            Text="Home" BackColor="#336600" BorderColor="Black" BorderStyle="Ridge" 
            Font-Bold="True" Font-Size="16pt" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Order1" runat="server" PostBackUrl="~/Order.aspx" 
            Text="Order" BackColor="#336600" BorderColor="Black" BorderStyle="Ridge" 
            Font-Bold="True" Font-Size="16pt" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Menu1" runat="server" PostBackUrl="~/Menu.aspx" Text="Menu" 
            BackColor="#336600" BorderColor="Black" BorderStyle="Ridge" Font-Bold="True" 
            Font-Size="16pt" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Coupons1" runat="server" PostBackUrl="~/Coupons.aspx" 
            Text="Coupons" BackColor="#336600" BorderColor="Black" BorderStyle="Ridge" 
            Font-Bold="True" Font-Size="16pt" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="About1" runat="server" PostBackUrl="~/About.aspx" 
            Text="About" BackColor="#336600" BorderColor="Black" BorderStyle="Ridge" 
            Font-Bold="True" Font-Size="16pt" ForeColor="White" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Feedback1" runat="server" PostBackUrl="~/Feedback.aspx" 
            Text="Feedback" BackColor="#336600" BorderColor="Black" 
            BorderStyle="Ridge" Font-Bold="True" Font-Size="16pt" />
        <br />
        <br />
&nbsp;&nbsp;
        <asp:Label ID="Label1" runat="server" BorderStyle="Solid" Font-Names="Papyrus" 
            Font-Size="36pt" Height="57px" style="margin-left: 0px" Text="Pizza Place" 
            Width="240px"></asp:Label>
        <br />
        <br />
        <br />
        <img align="top" class="style1" src="Images/53909580.png" alt =""/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img class="style5" src="Images/Picture1.png" alt="" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <img alt="" class="style4" src="Images/pizzatoss.jpg" />
        <br />
        <img class="style6" src="Images/Image-Chat-Pizza1.jpg" alt="" /></div>
    </form>
</body>
</html>
