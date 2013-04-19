<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 1011px;
            height: 271px;
        }
        #form1
        {
            height: 567px;
            width: 1022px;
        }
    </style>
</head>
<body bgcolor="#990000" style="width: 1031px">
    <form id="form1" runat="server">
    <div style="margin-left: 40px" align="center">
        <asp:Button ID="Home1" runat="server" PostBackUrl="~/Default.aspx" 
            Text="Home" BackColor="#336600" BorderColor="Black" BorderStyle="Groove" 
            Font-Names="Elephant" Font-Size="16pt" Width="79px" ForeColor="White" />
        &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;
        <asp:Button ID="Order1" runat="server" PostBackUrl="~/Order.aspx" 
            Text="Order" BackColor="#336600" BorderColor="Black" BorderStyle="Ridge" 
            Font-Names="Elephant" Font-Size="16pt" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Menu1" runat="server" PostBackUrl="~/Menu.aspx" Text="Menu" 
            BackColor="#336600" BorderColor="Black" BorderStyle="Ridge" 
            Font-Names="Elephant" Font-Size="16pt" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Coupons1" runat="server" PostBackUrl="~/Coupons.aspx" 
            Text="Coupons" BackColor="#336600" BorderColor="Black" BorderStyle="Ridge" 
            Font-Names="elephant" Font-Size="16pt" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="About1" runat="server" PostBackUrl="~/About.aspx" 
            Text="About" BackColor="#336600" BorderColor="Black" BorderStyle="Ridge" 
            Font-Names="Elephant" Font-Size="16pt" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Feedback1" runat="server" PostBackUrl="~/Feedback.aspx" 
            Text="Feedback" BackColor="#336600" BorderColor="Black" 
            BorderStyle="Ridge" Font-Names="Elephant" Font-Size="16pt" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Admin1" runat="server" Text="Admin" onclick="Admin1_Click" 
            PostBackUrl="~/Login.aspx" BackColor="Maroon" BorderColor="Black" 
            BorderStyle="Ridge" Font-Names="Elephant" Font-Size="10pt" />
        <br />
        <asp:Label ID="Title" runat="server" Font-Bold="True" Font-Names="Papyrus" 
            Font-Size="58pt" ForeColor="Black" Height="130px" 
            Text="Welcome to da Pizza Place!!" Width="960px" style="margin-left: 0px"></asp:Label>
    </div>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Names="Castellar" 
        Font-Size="18pt" Text="Real New-York Style Pizza"></asp:Label>
    <br />
    <br />
    <img class="style1" src="Images/Lombardis-Pizza-620x300.jpg" alt="" 
        align="middle"/><br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Label ID="Label2" runat="server" BackColor="#990000" Font-Bold="True" 
            Font-Italic="True" Font-Size="36pt" ForeColor="#FFFFCC" 
            Text="&quot;Our medium is their large&quot; "></asp:Label>
    </form>

</body>
</html>
