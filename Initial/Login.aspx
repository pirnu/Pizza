<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        Please Enter Your
        <br />
        Username: 
        <asp:TextBox ID="TextBox1" runat="server" TabIndex="1"></asp:TextBox>
        <br />
       Password:
        <asp:TextBox ID="TextBox2" TextMode="Password" runat="server" TabIndex="2"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Log In!" TabIndex="3" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label" Visible="False"></asp:Label>
    
        <asp:Button ID="toadmin" runat="server" onclick="toadmin_Click" 
            PostBackUrl="~/Admin.aspx" Text="Button" Visible="False" />
    
    </div>
    </form>
</body>
</html>
