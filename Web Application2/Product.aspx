<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Web_Application2.Product1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Adult: Indoor Fit 32
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    Indoor Fit 32 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

  <form id="form2" runat="server">
     
        <div id="imgColumn">
            <asp:Image ID="Image1" runat="server" ImageUrl="~/Images/Product 1.jpg" ToolTip="Indoor Fit 32" CssClass="IndoorCatFood" />

        </div>
      <div id="stockStatus">
          <strong><asp:Label ID="txtStock" runat="server" Text="In stock"></asp:Label></strong>
      </div>
          <div id="productSummary">
              <ul>
                  <li class="txtName">
                      <asp:Label ID="lblName" runat="server" Text="Product Name: "></asp:Label><span>Indoor Fit 32</span></li>
                  <li class="txtPrice">
                      <asp:Label ID="lblPrice" runat="server" Text="Price: "></asp:Label><span>$65.00</span></li>
                  <li class="txtWeight">
                      <asp:Label ID="lblWeight" runat="server" Text="Weight: "></asp:Label><span>5 kg</span></li>
                  <li class="txtType">
                      <asp:Label ID="lblType" runat="server" Text="Type: "></asp:Label><span>Kibble</span></li>
                  <li class="txtAge">
                      <asp:Label ID="lblLifestage" runat="server" Text="Lifestage: "></asp:Label><span>Adult (1-3 yers)</span></li>
              </ul>

          </div>
      <div ID="qtyCartRow">
            <div class="cartColumn">
              <asp:Button ID="btnCart" runat="server" Text="Add to Cart" CssClass="btnCartButton"/>  
            </div>
            <div class="qtyRow">
                  
                      <p>Quantity</p>
                      <asp:Button ID="incButton" runat="server" Text="+" />
                      <asp:TextBox ID="textbox1" runat="server" CssClass="qtyBox" ToolTip="Enter Quantity"></asp:TextBox>
                      <asp:Button ID="decButton" runat="server" Text="-" />
                  </div>
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
