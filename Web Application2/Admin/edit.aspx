<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="edit.aspx.cs" Inherits="Web_Application2.Admin.edit" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tabTitle" runat="server">
    Edit Product - Admin Site
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainHeading" runat="server">
    Edit Product
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:db_1626498_db_1626498_co5027_asgConnectionString %>" DeleteCommand="DELETE FROM [Product.tbl] WHERE [ProductID] = @original_ProductID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Weight] = @original_Weight) OR ([Weight] IS NULL AND @original_Weight IS NULL)) AND (([Instock] = @original_Instock) OR ([Instock] IS NULL AND @original_Instock IS NULL))" InsertCommand="INSERT INTO [Product.tbl] ([ProductID], [Name], [Price], [Weight], [Instock]) VALUES (@ProductID, @Name, @Price, @Weight, @Instock)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Product.tbl] WHERE ([ProductID] = @ProductID)" UpdateCommand="UPDATE [Product.tbl] SET [Name] = @Name, [Price] = @Price, [Weight] = @Weight, [Instock] = @Instock WHERE [ProductID] = @original_ProductID AND (([Name] = @original_Name) OR ([Name] IS NULL AND @original_Name IS NULL)) AND (([Price] = @original_Price) OR ([Price] IS NULL AND @original_Price IS NULL)) AND (([Weight] = @original_Weight) OR ([Weight] IS NULL AND @original_Weight IS NULL)) AND (([Instock] = @original_Instock) OR ([Instock] IS NULL AND @original_Instock IS NULL))">
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
        <SelectParameters>
            <asp:QueryStringParameter Name="ProductID" QueryStringField="ID" Type="Int32" />
        </SelectParameters>
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

    <asp:FormView ID="FormView1" runat="server" Cssclass="formView" DataKeyNames="ProductID" DataSourceID="SqlDataSource1" OnPageIndexChanging="FormView1_PageIndexChanging">
        <EditItemTemplate>
            <table ID="tblFormView"> 
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" Text="ProductID"></asp:Label>
                    </td>
                    <td>
                         <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label2" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Name") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label3" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td>
                         <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("Price") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label4" runat="server" Text="Weight"></asp:Label>
                    </td>
                    <td>
                         <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Weight") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label5" runat="server" Text="Instock"></asp:Label>
                    </td>
                    <td>              
                       <asp:CheckBox ID="CheckBox1" runat="server" Checked='<%# Bind("Instock") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:LinkButton ID="LinkButton1" runat="server" CssClass="btnFormView" CausesValidation="True" CommandName="Update" Text="Update" />
                    </td>
                    <td>
                       <asp:LinkButton ID="UpdateCancelButton" runat="server" CssClass="btnFormView" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </td>
                </tr>
            </table>
        </EditItemTemplate>
        <InsertItemTemplate>
            <table ID="tblFormView">
                <tr>
                    <td>
                        <asp:Label ID="Label6" runat="server" Text="ProductID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("ProductID") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label7" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td>              
                        <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Name") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label8" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("Price") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label9" runat="server" Text="Weight"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Weight") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label10" runat="server" Text="Instock"></asp:Label>
                    </td>
                    <td>
                         <asp:CheckBox ID="CheckBox2" runat="server" Checked='<%# Bind("Instock") %>' />
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:LinkButton ID="LinkButton2" runat="server" CssClass="btnFormView" CausesValidation="True" CommandName="Insert" Text="Insert" />
                    </td>
                    <td>
                         <asp:LinkButton ID="LinkButton3" runat="server" CssClass="btnFormView" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                    </td>
                </tr>  
                </table>
        </InsertItemTemplate>
        <ItemTemplate>
            <table ID="tblFormView">
                <tr>
                    <td>
                        <asp:Label ID="Label11" runat="server" Text="ProductID"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' Enabled="false" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label13" runat="server" Text="Name"></asp:Label>
                    </td>
                    <td>
                         <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' Enabled="false" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label15" runat="server" Text="Price"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price") %>' Enabled="false" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label17" runat="server" Text="Weight"></asp:Label>
                    </td>
                    <td>
                        <asp:TextBox ID="WeightTextBox" runat="server" Text='<%# Bind("Weight") %>' Enabled="false" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label19" runat="server" Text="Instock"></asp:Label>
                    </td>
                    <td>
                        <asp:CheckBox ID="CheckBox3" runat="server" Checked='<%# Bind("Instock") %>' Enabled="false"  />
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:LinkButton ID="LinkButton4" runat="server" CssClass="btnFormView" CausesValidation="False" CommandName="Edit" Text="Edit" />
                    </td>
                    <td>
                         <asp:LinkButton ID="LinkButton5" runat="server" CssClass="btnFormView" CausesValidation="False" CommandName="Delete" Text="Delete" />
                    </td>
                </tr>
            </table>     
              <div ID="addLinkColumn">
                   To add new data click new |  <asp:LinkButton ID="NewButton" runat="server" CausesValidation="False" CommandName="New" Text="New" />
             </div>  
        </ItemTemplate>     
   </asp:FormView>
     <asp:Image ID="imgUpload" runat="server" CssClass="uploadImage" />
</asp:Content>
