<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactsUs.aspx.cs" Inherits="Web_Application2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Customer Service: Contact Us  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    Contact Us
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
  

    <form id="form" runat="server">

    <div id="txtColumn">
                   <p>We want to hear from you! Jot us a note and we will get back to you as soon as possible.</p>
    </div>
         
            <table id="tbl">        
                <tr>
                    <th>
                        <p> NAME  :</p>
                    </th>
                    <td> 
                        <asp:TextBox ID="txtName" runat="server" CssClass="txtInput" ToolTip="Fill in your first name"></asp:TextBox>       
                    </td>
                </tr>
                <tr>
                    <td></td> 
                    <td>
                        <asp:RequiredFieldValidator ID="reqName" runat="server" ControlToValidate="txtName" ErrorMessage="* Field name is required." Font-Names="Arial" Font-Size="Small" ForeColor="#CC3300" Display="Dynamic"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th>

                       <p> EMAIL  :</p>
                        
                    </th>
                    <td>
                          <asp:TextBox ID="txtEmail" runat="server" CssClass="txtInput" ToolTip="Fill in your e-mail"></asp:TextBox> 
                    </td>

                </tr>
                <tr>
                    <td>
                      
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="* Field e-mail is required." Font-Names="Arial" Font-Size="Small" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="reqEmailValidator" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="* Please enter a valid email address." Font-Names="Arial" Font-Size="Small" ForeColor="#CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>            
                <tr>
                    <th>
                        <p>MOBILE NO : </p>
                    </th>
                    <td>
                        <asp:TextBox ID="txtMobileNo" runat="server" CssClass="txtInput" ToolTip="Fill in your mobile number"></asp:TextBox> 
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <th>
                        <p>SUBJECT  :</p>    
                    </th>
                    <td>
                        <asp:TextBox ID="txtSubject" runat="server"  CssClass="txtInput" ToolTip="Fill in Subject"></asp:TextBox> 
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:RequiredFieldValidator ID="reqSubject" runat="server" ErrorMessage="* Field subject is required." ControlToValidate="txtSubject" Display="Dynamic" Font-Names="Arial" Font-Size="Small" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>  
                <tr> 
                    <th>
                        <p> MESSAGE  :</p>   
                    </th>
                    <td>
                        <asp:TextBox ID="txtMessage" runat="server"  CssClass="txtInputMessage" ToolTip="Fill in your message" TextMode="MultiLine"></asp:TextBox> 
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td>
                        <asp:RequiredFieldValidator ID="reqMessage" runat="server" ControlToValidate="txtMessage" Display="Dynamic" ErrorMessage="* Field message is required." Font-Names="Arial" Font-Size="Small" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td>
                         <asp:Button ID="btnSendEmail" runat="server" Text="Submit" CssClass="Contactbutton"/>       
                    </td>
                </tr>    
            </table>
                  <div id="literalColumn">
                        <asp:Literal ID="litResult" runat="server"></asp:Literal> 
                  </div>   
    </form>
                  <div id="mapColumnHeading">
                         <h3> Locate Our Store</h3>
                 </div>
                 <div id="mapColumn">
                      <div id="map">
                       <script>
                            var map;
                            function initMap() {
                                var storeLocate = { lat: 4.9031, lng: 114.9398 };
                                var maplocation = new google.maps.Map(document.getElementById('map'), {
                                    center: storeLocate,
                                    zoom: 11,
                                });
                                
                                var contentDescription = '<h3>We Are Here</h3>'+
                                    '<div id="bodyContent">'+ '<p>Royal Canin Pet Store</p>'

                                var infoWindow = new google.maps.InfoWindow({
                                    content: contentDescription
                                });

                                var markLocation = new google.maps.Marker({
                                    position: storeLocate,
                                    map: maplocation,
                                    animation: google.maps.Animation.DROP,
                                    title: 'Store Location'
                                });
                                markLocation.addListener('click', bounceFunction);
                                function bounceFunction() {
                                    if (markLocation.getAnimation() !== null) {
                                        markLocation.setAnimation(null);
                                    }else{
                                        markLocation.setAnimation(google.maps.Animation.BOUNCE);

                                    }
                                }

                                markLocation.addListener('click', function () {
                                    infoWindow.open(map, markLocation);
                                });

                                   infoWindow.open(map, markLocation);
                            }

                       </script>
                       <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBHoID_wtgvNFmfMMnUvSmpHGmtKeTwmp8 &callback=initMap">
                       </script> 
                          </div>
                     </div>
                     <div id="locationInfo">
                         <h3>Royal Canin Pet Store</h3>
                         <br />
                         <p>Address: Royal Canin Store, Danson Complex, Lot 5345</p>
                         <br /> 
                         <p>Call Us: +673 2334334</p>
                         <br />
                         <p>Operating Hours: 9:00AM -8:30PM (GST) </p>
                        
                     </div>
                
</asp:Content>
