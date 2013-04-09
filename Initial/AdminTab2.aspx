<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminTab2.aspx.cs" Inherits="AdminTab2" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

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
            Width="129px" onclick="fbbutton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="menuButton" runat="server" Text="Edit Menu" Width="129px" 
            onclick="menuButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="coupButton" runat="server" Text="Edit Coupons" Width="129px" 
            onclick="coupButton_Click" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="trendButton" runat="server" Text="View Trends" Width="129px" 
            onclick="trendButton_Click" />
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button1" runat="server" PostBackUrl="~/Default.aspx" 
            Text="Back to Home" />
        <br />
        <br />
        <br />
        <asp:Label ID="fblabel" runat="server" style="font-size: medium" 
            Text="Feedback"></asp:Label>
        <br />
        <asp:TextBox ID="fbtext" runat="server" Height="65px" TextMode="MultiLine" 
            Width="301px"></asp:TextBox>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <br />
        <asp:Button ID="fbapprove" runat="server" Text="Approve" />
&nbsp;&nbsp;&nbsp;
        <asp:Button ID="fbdeny" runat="server" Text="Deny" />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" 
            SelectCommand="SELECT * FROM [Menu]"></asp:SqlDataSource>
        <asp:GridView ID="data" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="Item" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="Item" HeaderText="Item" ReadOnly="True" 
                    SortExpression="Item" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString3 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString3.ProviderName %>" 
            SelectCommand="SELECT [Pizza], [Grinders] FROM [Sales]"></asp:SqlDataSource>
        <asp:Chart ID="trends" runat="server" DataSourceID="SqlDataSource3">
            <series>
                <asp:Series Name="Series1" XValueMember="Pizza" YValueMembers="Grinders">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
        <asp:GridView ID="coupData" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ID" DataSourceID="SqlDataSource2">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                    SortExpression="ID" />
                <asp:BoundField DataField="Discount" HeaderText="Discount" 
                    SortExpression="Discount" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString2 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString2.ProviderName %>" 
            SelectCommand="SELECT * FROM [Coupons]"></asp:SqlDataSource>
        <br /></div>
    </form>
</body>
</html>
