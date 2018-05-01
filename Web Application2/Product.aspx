<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Web_Application2.Product1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Royal Canin - Product Overview
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    Product Overview
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

  <form id="form2" runat="server">
         <div id="imgColumn">
            <asp:Image ID="imgUpload" runat="server" CssClass="IndoorCatFood" />
         </div>  
          <div id="productSummary">
              <ul>
                      <asp:FormView ID="FormView2" runat="server" DataKeyNames="ProductID" DataSourceID="SqlDataSource1">
                          <EditItemTemplate>
                              ProductID:
                              <asp:Label ID="ProductIDLabel1" runat="server" Text='<%# Eval("ProductID") %>' />
                              <br />
                              Name:
                              <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                              <br />
                              Price:
                              <asp:TextBox ID="PriceTextBox" runat="server" Text='<%# Bind("Price","{0:C}") %>' />
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
                              ProductID:
                              <asp:TextBox ID="ProductIDTextBox" runat="server" Text='<%# Bind("ProductID") %>' />
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
                              <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                              &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                          </InsertItemTemplate>
                          <ItemTemplate>
                              <li class="txtPrice">
                                 <asp:Label ID="Label1" runat="server" Text="ProductID: "></asp:Label><span><asp:Label ID="ProductIDLabel" runat="server" Text='<%# Eval("ProductID") %>' /></span></li>            
                              <li class="txtWeight">                          
                                 <asp:Label ID="Label2" runat="server" Text="Name: "><span></asp:Label><span class="txtSpace"><asp:Label ID="NameLabel" runat="server" Text='<%# Bind("Name") %>' /></span></li>
                              <li class="txtType">
                                  <asp:Label ID="Label3" runat="server" Text="Price: "></asp:Label><span><asp:Label ID="PriceLabel" runat="server" Text='<%# Bind("Price") %>' /></span></li>
                              <li class="txtAge">
                                  <asp:Label ID="Label4" runat="server" Text="Weight: "></asp:Label><span><asp:Label ID="WeightLabel" runat="server" Text='<%# Bind("Weight") %>' /></span></li>
                              <li class="stockStatus">
                                  <strong><asp:Label ID="txtStock" runat="server" Text="In stock "></asp:Label></strong><span><asp:CheckBox ID="InstockCheckBox" runat="server" Checked='<%# Bind("Instock") %>' Enabled="false" /></span></li>      
                          </ItemTemplate>
                           </asp:FormView>     
                      </ul>
                </div>    
              <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:db_1626498_db_1626498_co5027_asgConnectionString %>" SelectCommand="SELECT * FROM [Product.tbl] WHERE ([ProductID] = @ProductID)">
                  <SelectParameters>
                      <asp:QueryStringParameter Name="ProductID" QueryStringField="ID" Type="Int32" />
                  </SelectParameters>
              </asp:SqlDataSource>     
      <div ID="qtyCartRow">
            <div class="cartColumn">
              <asp:Button ID="btnCart" runat="server" Text="Add to Cart" CssClass="btnCartButton"/>  
            </div>
            <div class="qtyRow">
               <p>Quantity</p>
            <asp:DropDownList ID="ddlQuantity" runat="server">
               <asp:ListItem Selected="True">1</asp:ListItem>
               <asp:ListItem>2</asp:ListItem>
               <asp:ListItem>3</asp:ListItem>
            </asp:DropDownList>
                  </div>
                    <!--<asp:Button ID="incButton" runat="server" Text="+" />
                      <asp:TextBox ID="textbox1" runat="server" CssClass="qtyBox" ToolTip="Enter Quantity"></asp:TextBox>
                      <asp:Button ID="decButton" runat="server" Text="-" />-->
       </div>
           
      <div id="introColmn">
          <div id="cHeader">
              <p>Introduction</p>
          </div>
          <p> Royal Canin Indoor Fit 32 is complete and balanced nutrition formulated for the specific nutritional needs of indoor adult cats
              A lack of exercise may lead to a slower intestinal transit which can result in smelly stools. INDOOR ADULT is
              formulated with highly digestible protein (L.I.P.*), an appropriate fiber content and specific nutrients to promote 
              good digestion and help reduce the quantity and odor of stools.</p>

      </div>
     

      <div id="btnColumn" >
             <asp:Button ID="Button2" runat="server" Text="Back to Dry Food" CssClass="returnbutton1" PostBackUrl="~/DryFood.aspx"/> 
          </div>

        


                  
    

         

       
     
   </form>
           
 

    
    
     

</asp:Content>
