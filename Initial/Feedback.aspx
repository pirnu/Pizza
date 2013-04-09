<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Button ID="Home1" runat="server" PostBackUrl="~/Default.aspx" 
        Text="Home" />
    <asp:Button ID="Order1" runat="server" PostBackUrl="~/Order.aspx" 
        Text="Order" />
    <asp:Button ID="Menu1" runat="server" PostBackUrl="~/Menu.aspx" Text="Menu" />
    <asp:Button ID="Coupons1" runat="server" PostBackUrl="~/Coupons.aspx" 
        Text="Coupons" />
    <asp:Button ID="About1" runat="server" PostBackUrl="~/About.aspx" 
        Text="About" />
    <asp:Button ID="Feedback1" runat="server" PostBackUrl="~/Feedback.aspx" 
        Text="Feedback" />
    <br />
    Welcome to the feedback page<div>
    
    </div>
    </form>
</body>
</html>
