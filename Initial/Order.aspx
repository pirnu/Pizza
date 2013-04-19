<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Order.aspx.cs" Inherits="Order" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {
            width: 103px;
            height: 86px;
        }
        .style2
        {
            width: 100px;
            height: 81px;
        }
        .style3
        {
            width: 96px;
            height: 89px;
        }
        .style4
        {
            width: 95px;
            height: 87px;
        }
        .style5
        {
            width: 96px;
            height: 89px;
        }
        .style6
        {
            width: 95px;
            height: 77px;
        }
        .style7
        {
            width: 92px;
            height: 87px;
        }
    </style>
</head>
<body style="height: 713px">
    <form id="form1" runat="server">
    <div align="left" style="width: 896px; height: 718px">
    
        <asp:Button ID="Home1" runat="server" PostBackUrl="~/Default.aspx" 
            Text="Home" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Order1" runat="server" PostBackUrl="~/Order.aspx" 
            Text="Order" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Menu1" runat="server" PostBackUrl="~/Menu.aspx" Text="Menu" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Coupons1" runat="server" PostBackUrl="~/Coupons.aspx" 
            Text="Coupons" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="About1" runat="server" PostBackUrl="~/About.aspx" 
            Text="About" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Feedback1" runat="server" PostBackUrl="~/Feedback.aspx" 
            Text="Feedback" />
        <br />
        <br />
        <br />
        <img align="bottom" class="style1" src="Images/appetizer.gif" /><asp:Button 
            ID="appetizer1" runat="server" BackColor="#FF3300" BorderColor="Black" 
            BorderStyle="Inset" Font-Bold="True" Font-Names="Comic Sans MS" 
            Font-Size="24pt" Height="77px" Text="Appetizers" Width="325px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <img class="style2" 
            src="Images/sunset%20pizzeria%20pizza%20italian%20family%20restaurant%20deli%20henderson%20las%20vegas%20italian%20grinder%20meatball%20parmesan.png" /><asp:Button 
            ID="grinder1" runat="server" BackColor="#FF3300" BorderColor="Black" 
            BorderStyle="Inset" Font-Bold="True" Font-Names="Comic Sans MS" 
            Font-Size="24pt" Height="78px" Text="Grinder" Width="330px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <img class="style3" src="Images/gourmet_pizza_3.jpg" />
        <asp:Button ID="gourmet1" runat="server" BackColor="#FF3300" 
            BorderColor="Black" BorderStyle="Inset" Font-Bold="True" 
            Font-Names="Comic Sans MS" Font-Size="24pt" Height="84px" Text="Gourmet Pizza" 
            Width="329px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <img class="style4" src="Images/cheese_pizza.jpg" />
        <asp:Button ID="make1" runat="server" BackColor="#FF3300" BorderColor="Black" 
            BorderStyle="Inset" Font-Bold="True" Font-Names="Comic Sans MS" 
            Font-Size="22pt" Height="81px" Text="Make Your Own Pizza" Width="330px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <img class="style5" src="Images/10_peppcalzone.jpg" />
        <asp:Button ID="special1" runat="server" BackColor="#FF3300" 
            BorderColor="Black" BorderStyle="Inset" Font-Bold="True" Font-Size="24pt" 
            Height="82px" Text="Specialty Items" Width="328px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <img class="style6" src="Images/cannoli-photo1.jpg" />&nbsp;
        <asp:Button ID="dessert1" runat="server" BackColor="#FF3300" 
            BorderColor="Black" BorderStyle="Inset" Font-Bold="True" Font-Size="24pt" 
            Height="82px" Text="Desserts" Width="321px" />
        <br />
        <img class="style7" src="Images/june_25_page_one_bottom_pcbc_branding.jpg" />&nbsp;&nbsp;
        <asp:Button ID="drinks1" runat="server" BackColor="#FF3300" BorderColor="Black" 
            BorderStyle="Inset" Font-Bold="True" Font-Size="24pt" Height="82px" 
            Text="Drinks" Width="321px" />
        <br />
    </div>
    </form>
</body>
</html>
