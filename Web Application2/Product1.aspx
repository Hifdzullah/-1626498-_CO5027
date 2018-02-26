<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Product1.aspx.cs" Inherits="Web_Application2.Product1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Polo Red: Product View
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    Polo Red
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
                    <img src ="~/Images/Product1.jpg" runat="server" class="imgproduct1"/>
                </td>
                    
                <td>
                   <p>Product Name: Polo Red</p>
                   <p>Price: $65.00</p>
                   <p>Color: Red</p>
                   <p>Size: 4.5 OZ (125ml)</p>
 
                </td>
            </tr>
            </table>
             <table id="tblproduct1button">
            <tr>

             <td>
                     <a class="firstbutton" href="Men.aspx"> Add to Cart</a>                      
             </td>
             <td style="width: 979px">
                 <a class="returnbutton1" href="Men.aspx"> Back to Men Perfumes</a>
                     
                     

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
