<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Menu.aspx.cs" Inherits="Menu" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
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
        Welcome to the menu page<br />
        <br />
        <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
            AutoGenerateColumns="False" BackColor="White" BorderColor="#CC9966" 
            BorderStyle="None" BorderWidth="1px" CellPadding="4" 
            DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
            </Columns>
            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
            <RowStyle BackColor="White" ForeColor="#330099" />
            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
            <SortedAscendingCellStyle BackColor="#FEFCEB" />
            <SortedAscendingHeaderStyle BackColor="#AF0101" />
            <SortedDescendingCellStyle BackColor="#F6F0C0" />
            <SortedDescendingHeaderStyle BackColor="#7E0000" />
        </asp:GridView>
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString8 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString8.ProviderName %>" 
            SelectCommand="SELECT [Item], [Price], [Description] FROM [Menu]">
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
