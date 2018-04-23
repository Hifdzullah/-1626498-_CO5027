<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="add.aspx.cs" Inherits="Web_Application2.Admin.add" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tabTitle" runat="server">
    Add Product - Admin Site
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainHeading" runat="server">
    Add Product
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <div id="formCoulumn">
        <p>Current data</p>
    </div>
      <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" CssClass="GridView1" ForeColor="#333333" GridLines="Vertical" PageSize="4" >
          <AlternatingRowStyle BackColor="White" />
          <Columns>
              <asp:BoundField DataField="ProductID" HeaderText="ProductID" ReadOnly="True" SortExpression="ProductID" />
              <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
              <asp:BoundField DataField="Price" HeaderText="Price" SortExpression="Price" />
              <asp:BoundField DataField="Weight" HeaderText="Weight" SortExpression="Weight" />
              <asp:CheckBoxField DataField="Instock" HeaderText="Instock" SortExpression="Instock" />
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
    <br />
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626498_db_1626498_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [Product.tbl]" InsertCommand="INSERT INTO [Product.tbl] (ProductID, Name, Price, Weight, Instock) VALUES (@ProductID, @Name, @Price, @Weight, @Instock)">
        <InsertParameters>
            <asp:Parameter Name="ProductID" />
            <asp:Parameter Name="Name" />
            <asp:Parameter Name="Price" />
            <asp:Parameter Name="Weight" />
            <asp:Parameter Name="Instock" />
        </InsertParameters>
    </asp:SqlDataSource>
    <asp:FormView ID="FormView1" CssClass="formView" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" DefaultMode="Insert"  OnPageIndexChanging="FormView1_PageIndexChanging">
        <EditItemTemplate>
            ProductID:
            <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
            <br />
            Name:
            <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
            <br />
            Price:
            <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' />
            <br />
            Weight:
            <asp:TextBox ID="WeightTextBox" runat="server" Text='<%# Bind("Weight") %>' />
            <br />
            Instock:
            <asp:CheckBox ID="InstockCheckBox" runat="server" Checked='<%# Bind("Instock") %>' />
            <br />
            <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
            &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
        </EditItemTemplate>
         
        <InsertItemTemplate>

            <table id="tblFormView">
                <tr>
                    <td colspan="2"> Fill in the form to add product.</td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="ProductID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ProductIDTextBox" runat="server" CssClass="inputFormView" ToolTip="Enter ProductID" Text='<%# Bind("ProductID") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                    <td> 
                        <asp:TextBox ID="NameTextBox" runat="server" CssClass="inputFormView" ToolTip="Enter Product Name" Text='<%# Bind("Name") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label></td>
                    <td> 
                        <asp:TextBox ID="PriceTextBox" runat="server" CssClass="inputFormView" ToolTip="Enter Product Price" Text='<%# Bind("Price") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Weight"></asp:Label></td>
                    <td>
                        <asp:TextBox ID="WeightTextBox" runat="server" CssClass="inputFormView" ToolTip="Enter Product Weight" Text='<%# Bind("Weight") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Instock"></asp:Label></td>
                    <td>
                        <asp:CheckBox ID="InstockCheckBox" runat="server" CssClass="inputFormView" ToolTip="Select if Instock" Checked='<%# Bind("Instock") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                      <asp:LinkButton ID="InsertButton" runat="server" CssClass="btnFormView" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    </td>
                    <td>
                        <asp:LinkButton ID="InsertCancelButton" runat="server" CssClass="btnFormView" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </td>
                </tr>
            </table>    
        </InsertItemTemplate>
    </asp:FormView>   
</asp:Content>
