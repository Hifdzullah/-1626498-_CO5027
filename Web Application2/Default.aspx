<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_Application2.Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Homepage: Royal Canin
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    Royal Canin Cat Food 
</asp:Content> 
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
      <form id="frmProduct" runat="server">
           <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626498_db_1626498_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [Product.tbl]"></asp:SqlDataSource>
           <asp:Repeater ID="Repeater1" runat="server"  DataSourceID="SqlDataSource1" EnableViewState="false">
              <HeaderTemplate></HeaderTemplate>
               <ItemTemplate>
                   <div class="repeaterColumn">
                       <table class="tbl">
                         <tr>   
                            <td> 
                                <div class="imgBox">
                                    <a href="<%#Eval ("ProductID","Product.aspx?ID={0}") %>"><asp:Image ID="Image1" runat="server" ToolTip="View Product" AlternateText="Product Image" ImageUrl='<%# "~/Admin/ProductImages/" + Eval ("ProductID")+".jpg" %>' CssClass="repeaterImage" />  
                                </div>  
                            </td>
                         </tr>
                         <tr>
                            <td>
                               <strong class="productName"><%#Eval("Name")%></a></strong>
                            </td>  
                         </tr>
                         <tr>   
                           <td>
                              <p>Price: <%#Eval("Price")%></p>
                           </td>   
                        </tr>
                        <tr>
                           <td>
                              <asp:Button ID="Button1" runat="server" CssClass="btnViewProduct" Text="Add to Cart" />
                           </td>
                        </tr>
                      </table>
                 </div>
            </ItemTemplate>
          <FooterTemplate></FooterTemplate>
        </asp:Repeater>
     </form>        
</asp:Content>



