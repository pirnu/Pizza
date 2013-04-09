<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminTab.aspx.cs" Inherits="AdminTab" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: x-large">
    
        Admin Page<br />
        <br />
        <asp:Button ID="fbbutton" runat="server" Text="Approve Feedback" 
            Width="129px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Edit Menu" Width="129px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" Text="Edit Coupons" Width="129px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button5" runat="server" Text="View Trends" Width="129px" />
        <br />
        <br />
        <br />
        <asp:Label ID="fblabel" runat="server" style="font-size: medium" 
            Text="Feedback"></asp:Label>
        <br />
        <asp:TextBox ID="fbtext" runat="server" Height="65px" TextMode="MultiLine" 
            Width="301px"></asp:TextBox>
        <br />
        <asp:Button ID="fbapprove" runat="server" Text="Approve" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="fbdeny" runat="server" Text="Deny" />
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
