<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AdminTab2.aspx.cs" Inherits="AdminTab2" %>

<%@ Register assembly="System.Web.DataVisualization, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35" namespace="System.Web.UI.DataVisualization.Charting" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style="font-size: x-large" dir="ltr">
    
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

        <asp:GridView ID="data" runat="server" AutoGenerateColumns="False"
            DataKeyNames="Index" DataSourceID="SqlDataSource1" BackColor="White" 
            BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" 
            onrowcancelingedit="StayVisible" onrowdeleting="StayVisible" 
            onrowediting="StayVisible" onrowupdated="StayVisible" 
            onrowdeleted="StayVisible">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                <asp:BoundField DataField="Index" HeaderText="Index" ReadOnly="True" 
                    SortExpression="Index" />
                <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="Category" HeaderText="Category" 
                    SortExpression="Category" />
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>

        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="Index" DataSourceID="SqlDataSource1" Height="50px" 
            Width="125px" oniteminserted="StayMoreVisible">
            <Fields>
                <asp:BoundField DataField="Index" HeaderText="Index" ReadOnly="True" 
                    SortExpression="Index" />
                <asp:BoundField DataField="Item" HeaderText="Item" SortExpression="Item" />
                <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
                <asp:BoundField DataField="Description" HeaderText="Description" 
                    SortExpression="Description" />
                <asp:BoundField DataField="Category" HeaderText="Category" 
                    SortExpression="Category" />
            </Fields>
        </asp:DetailsView>
        <br />

        <asp:Chart ID="trends" runat="server" DataSourceID="SqlDataSource3">
            <series>
                <asp:Series Name="Series1" XValueMember="Item" YValueMembers="Quantity">
                </asp:Series>
            </series>
            <chartareas>
                <asp:ChartArea Name="ChartArea1">
                </asp:ChartArea>
            </chartareas>
        </asp:Chart>
        <asp:GridView ID="coupData" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="ID" DataSourceID="SqlDataSource2" AllowPaging="True" 
            AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="ID" HeaderText="ID" ReadOnly="True" 
                    SortExpression="ID" />
                <asp:BoundField DataField="Discount" HeaderText="Discount" 
                    SortExpression="Discount" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString6 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString6.ProviderName %>" 
            SelectCommand="SELECT * FROM [Coupons]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString5 %>" 
            ProviderName="<%$ ConnectionStrings:ConnectionString5.ProviderName %>" 
            SelectCommand="SELECT * FROM [Sales]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString1 %>" 
            DeleteCommand="DELETE FROM [Menu] WHERE [Index] = ?" 
            InsertCommand="INSERT INTO [Menu] ([Index], [Item], [Price], [Description], [Category]) VALUES (?, ?, ?, ?, ?)" 
            ProviderName="<%$ ConnectionStrings:ConnectionString1.ProviderName %>" 
            SelectCommand="SELECT * FROM [Menu] ORDER BY [Index]" 
            
            
            
            
            UpdateCommand="UPDATE [Menu] SET [Item] = ?, [Price] = ?, [Description] = ?, [Category] = ? WHERE [Index] = ?">
            <DeleteParameters>
                <asp:Parameter Name="Index" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Index" Type="Int32" />
                <asp:Parameter Name="Item" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Item" Type="String" />
                <asp:Parameter Name="Price" Type="Double" />
                <asp:Parameter Name="Description" Type="String" />
                <asp:Parameter Name="Category" Type="String" />
                <asp:Parameter Name="Index" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <br /></div>
        <div>
            <p style="text-align:right;">
            <asp:Button ID="btnAdd" runat="Server" Text="Add New Record" OnClick="AddNewRecord" /></p>
        </div>
    </form>
</body>
</html>
