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
                   <p>WE WANT TO HEAR FROM YOU</p>
    </div>
         
            <table id="tbl">        
                <tr>
                    <th>
                        <p> NAME * :</p>
                    </th>
                    <td> 
                        <asp:TextBox ID="txtName" runat="server"  OnTextChanged="txtName_TextChanged" CssClass="txtInput" ToolTip="Fill in your first name"></asp:TextBox>       
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

                       <p> EMAIL * :</p>
                        
                    </th>
                    <td>
                          <asp:TextBox ID="txtEmail" runat="server"  OnTextChanged="txtEmail_TextChanged" CssClass="txtInput" ToolTip="Fill in your e-mail"></asp:TextBox> 
                    </td>

                </tr>
                <tr>
                    <td>
                        <asp:RegularExpressionValidator ID="reqEmailValidator" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="* Please enter a valid email address." Font-Names="Arial" Font-Size="Small" ForeColor="#CC3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                    <td>
                        <asp:RequiredFieldValidator ID="reqEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="* Field e-mail is required." Font-Names="Arial" Font-Size="Small" ForeColor="#CC3300"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <th>
                        <p>PHONE NO :</p>
                    </th>
                    <td>
                         <asp:TextBox ID="txtPhoneNo" runat="server"  OnTextChanged="txtPhoneNo_TextChanged" CssClass="txtInput" ToolTip="Fill in your phone number"></asp:TextBox> 
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <th>
                        <p>MOBILE NO : </p>
                    </th>
                    <td>
                        <asp:TextBox ID="txtMobileNo" runat="server"  OnTextChanged="txtMobileNo_TextChanged" CssClass="txtInput" ToolTip="Fill in your mobile number"></asp:TextBox> 
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td></td>
                </tr>
                <tr>
                    <th>
                        <p>SUBJECT * :</p>    
                    </th>
                    <td>
                        <asp:TextBox ID="txtSubject" runat="server"  OnTextChanged="txtSubject_TextChanged" CssClass="txtInput" ToolTip="Fill in Subject"></asp:TextBox> 
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
                        <p> MESSAGE *  :</p>   
                    </th>
                    <td>
                        <asp:TextBox ID="txtMessage" runat="server"  OnTextChanged="txtMessage_TextChanged" CssClass="txtInputMessage" ToolTip="Fill in your message" TextMode="MultiLine"></asp:TextBox> 
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
                         <asp:Button ID="btnSendEmail" runat="server" Text="Submit" OnClick="btnSendEmail_Click" CssClass="Contactbutton"/>       
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
                      <div id="map"></div>
                       <script>
                            var map;
                            function initMap() {
                            map = new google.maps.Map(document.getElementById('map'), {
                            center: {lat: -34.397, lng: 150.644},
                            zoom: 8
                            });
                         }
                       </script>
                       <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDhvbk89qrO47KbX4y1NWko6HBN-6VVEGM &callback=initMap">
                       </script> 
                </div>
</asp:Content>
