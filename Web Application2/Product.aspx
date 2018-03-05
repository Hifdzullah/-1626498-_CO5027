<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product.aspx.cs" Inherits="Web_Application2.Product1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Polo Red: Product View
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    Indoor Fit 32 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">

    
    <table class="tbl">
         
        <tr>
            <td class="tblhead">
                </td>
        </tr>
         
         <tr>
         <td>

         </td>
         </tr>
        <tr>
            <td>
                
    
        <table id="tblproduct1" >
           
            <tr>
                <td>
                    <img src ="~/Images/Product 1.jpg" runat="server" class="imgproduct1"/>
                </td>
                    
                <td>
                   <p>Product Name: Indoor Fit 32</p>
                   <p>Price: $65.00</p>
                   <p>Weight: 5kg</p>
                   <p>&nbsp;</p>
 
                </td>
            </tr>
            </table>
             <table id="tblproduct1button">
            <tr>

             <td>
                     <a class="firstbutton" href="Men.aspx"> Add to Cart</a>                      
             </td>
             <td>
                 <a class="returnbutton1" href="DryFood.aspx"> Back to Dry Cat Food</a>
                     
                     

                </td>
                </tr>
            </table>
        </table>
                

             <table class="tbl">
        <tr>
            
            <td id="tblheadoverview1">
                Overview</td>
        </tr>

        <tr>
            <td class="Overview">
                <p>Romance blends velvety woods with extravagant florals and seductive musk to capture the timeless essence of falling in love. </p>
                <p>A wonderful gift, this boxed set comes with an eau de parfum spray, shower gel, and body lotion.</p>

            </td>
        </tr>
         
        <tr>
            <td>
                </td>
        </tr>
    <tr>
            <td>
                
            </table>
              
           
 

    
    
     

</asp:Content>
