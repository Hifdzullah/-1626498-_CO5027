<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_Application2.Default" %>


<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Homepage: Royal Canin
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    Royal Canin Cat Food 
</asp:Content> 


<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
   
      <table class="tbl">

        <tr>
            <td class="tblhead">
                All Products</td>
        </tr>
         
        <tr>
            <td>
                </td>
        </tr>
    <tr>
            <td>
                
    
        <table class="tbl" >
            <tr>
                <td>
                    <img src ="~/Images/Product 1.jpg" runat="server" class="imageone"/>
                </td>
                <td>
                    <img src ="~/Images/Product 2.jpg" runat="server" class="imageone"/>
                </td>
                 <td>
                    <img src ="~/Images/Product3.jpg" runat="server" class="imageone"/>
                </td>
                 <td>
                    <img src ="~/Images/Product4.jpg" runat="server" class="imageone"/>
                </td>
               

            </tr>
            <tr>
               
                <td >
                                Name :
                                Indoor Fit 25
                </td>
                <td style="height: 21px">
                                Name : Weight Care
                </td>
                <td style="height: 21px" >
                                Name : Light Weight
                </td>
                <td style="height: 21px" >
                                Name :
                                Hairball Care
                </td>
              
                
            </tr>
            <tr>

             <td>
                                Price :
                                $35.00
                                 <a class="firstbutton" href="Product.aspx">View Product</a>   
                </td>
                <td>
                                Price :
                                $40.00
                                 <a class="firstbutton" href="Product.aspx">View Product</a>            
                </td>
                <td>
                                Price :
                                $40.00
                                 <a class="firstbutton" href="About.html">View Product</a>            
                </td>
                <td>
                                Price :
                                $50.00
                                 <a class="firstbutton" href="About.html">View Product</a>            
                </td>
                </tr>
            </table>
           </table>
 

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
                
    
        <table class="tbl" >
            <tr>
                <td>
                    <img src ="~/Images/product5.jpg" runat="server" class="imageone"/>
                </td>
                <td>
                    <img src ="~/Images/Product 6.jpg" runat="server" class="imageone"/>
                </td>
                 <td>
                    <img src ="~/Images/Product 7.jpg" runat="server" class="imageone"/>
                </td>
                 <td>
                    <img src ="~/Images/product8.jpg" runat="server" class="imageone"/>
                </td>
                 
                
            </tr>
            <tr>
                <td >
                                Name : Oral Dental Care</td>
                <td>
                                Name : Hair and Skin Care</td>
                <td >
                                Name : British Shorthair 34
                </td>
                <td >
                                Name : Kitten Dry Food
                </td>
              
            </tr>
            <tr>
                <td>
                                Price :
                                $50.00
                                 <a class="firstbutton" href="About.html">View Product</a>            
                </td>
                <td>
                                Price :
                                $55.00
                                 <a class="firstbutton" href="About.html">View Product</a>            
                </td>
                <td>
                                Price :
                                $60.00
                                 <a class="firstbutton" href="About.html">View Product</a>            
                </td>
                <td>
                                Price :
                                $50.00
                                 <a class="firstbutton" href="About.html">View Product</a>            
                </td>
               
            </tr>
        </table>
                </table>
             
</asp:Content>



