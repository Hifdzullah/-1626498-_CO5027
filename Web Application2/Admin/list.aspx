<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="list.aspx.cs" Inherits="Web_Application2.Admin.List" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tabTitle" runat="server">
    List page - Admin Site
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainHeading" runat="server">
     View Product 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">

    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" CssClass="GridView1" AllowPaging="True" AllowSorting="True" CellPadding="4" ForeColor="#333333"  PageSize="5" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
            <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
            <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
            <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
            <asp:CheckBoxField DataField="Instock" HeaderText="Instock" SortExpression="Instock" />
            <asp:HyperLinkField DataNavigateUrlFields="ProductID" HeaderText="Image Upload" DataNavigateUrlFormatString="uploadImage.aspx?ID={0}" Text="Upload" />
            <asp:HyperLinkField DataNavigateUrlFields="ProductID" HeaderText="Edit Data" DataNavigateUrlFormatString="edit.aspx?ID={0}" Text="Edit" />
        </Columns>
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626498_db_1626498_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [Product.tbl] WHERE [ProductID] = @original_ProductID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Weight] = @original_Weight) OR ([Weight] IS NULL AND @original_Weight IS NULL)) AND (([Instock] = @original_Instock) OR ([Instock] IS NULL AND @original_Instock IS NULL))" InsertCommand="INSERT INTO [Product.tbl] ([ProductID], [Name], [Price], [Weight], [Instock]) VALUES (@ProductID, @Name, @Price, @Weight, @Instock)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product.tbl]" UpdateCommand="UPDATE [Product.tbl] SET [Name] = @Name, [Price] = @Price, [Weight] = @Weight, [Instock] = @Instock WHERE [ProductID] = @original_ProductID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Weight] = @original_Weight) OR ([Weight] IS NULL AND @original_Weight IS NULL)) AND (([Instock] = @original_Instock) OR ([Instock] IS NULL AND @original_Instock IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
            <asp:Parameter Name="original_Weight" Type="Double" />
            <asp:Parameter Name="original_Instock" Type="Boolean" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="ProductID" Type="Int32" />
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Weight" Type="Double" />
            <asp:Parameter Name="Instock" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Name" Type="String" />
            <asp:Parameter Name="Price" Type="Decimal" />
            <asp:Parameter Name="Weight" Type="Double" />
            <asp:Parameter Name="Instock" Type="Boolean" />
            <asp:Parameter Name="original_ProductID" Type="Int32" />
            <asp:Parameter Name="original_Name" Type="String" />
            <asp:Parameter Name="original_Price" Type="Decimal" />
            <asp:Parameter Name="original_Weight" Type="Double" />
            <asp:Parameter Name="original_Instock" Type="Boolean" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>
