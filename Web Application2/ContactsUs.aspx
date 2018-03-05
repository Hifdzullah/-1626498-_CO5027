<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContactsUs.aspx.cs" Inherits="Web_Application2.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Customer Service: Contact Us  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    Contact Us 
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
      
    <form>
    
       <table class="tblhead">
   
    <tr>
        <td class="tblwidth1">
             Contact Us
            <br />
            WE WANT TO HEAR FROM YOU;
            </td>
    </tr>
    <tr>
        <td>

            <table id="tbl">
                <tr>
                    <td class="tblhead" colspan="2" style="height: 40px">
                        &nbsp;<br />
                        Required *</td>
                </tr>
                <tr>
                    <td>
                        &nbsp;</td>
                    <td style="width: 959px">
                        &nbsp;</td>
                </tr>
                <tr>
                    <td class="row1">
                        FIRST NAME  * :
                    </td>
                    <td class="column1">
                        
                        <asp:TextBox ID="TxtFirstName"  runat="server" OnTextChanged="TxtFirstName_TextChanged"></asp:TextBox>
                    </td>
                   
                </tr>
                <tr>
                    <td class="row2">
                    </td>
                    
                    <td>
                                
                    </td>
                </tr>
                <tr>
                    <td class="row3">
                        LAST NAME *  :
                    </td>
                    <td class="column3">
                           <input type="text" class="Secondinput" placeholder="Last Name..." title="Type in your last name">
                           <asp:TextBox ID="TxtLastName" runat="server"></asp:TextBox>

                        </td>
                </tr>
                <tr>
                    <td class="row4">

                    </td>
                    <td class="column4">

                    </td>

                </tr>
                  <tr>
                    <td class="row5">

                        EMAIL* :
                        
                    </td>
                    <td class="column5">
                          <input type="text" class="Thirdinput" placeholder="Email..." title="Type in your email">
                    </td>

                </tr>
                  <tr>
                    <td class="row6">

                       </td>
                    <td class="column6" style="width: 959px">

                    </td>

                </tr>
                  <tr>
                    <td class="row7">

                        ZIP CODE * :
                        
                    </td>
                    <td class="column7" style="width: 959px">
                          <input type="text" class="Fourthinput" placeholder="Zip code..." title="Type in your zip code">
                    </td>

                </tr>
                  <tr>
                    <td class="row8">

                        </td>
                    <td class="column8">

                    </td>

                </tr>
                  <tr>
                    <td class="row9">

                        PHONE NO :
                        
                    </td>
                    <td class="column9">
                          <input type="text" class="Fifthinput" placeholder="Phone Number..." title="Type in your phone number">
                    </td>

                </tr>
                 <tr>
                    <td class="row10">

                        </td>
                    <td class="column10" style="width: 959px">

                    </td>

                </tr>
                 <tr>
                    <td class="row9">

                        MOBILE NO   :</td>
                    <td class="column9">
                          <input type="text" class="Sixthinput" placeholder="Mobile Number..." title="Type in your mobile number">
                    </td>

                </tr>
                 <tr>
                    <td class="row10">

                       </td>
                    <td class="column10">

                    </td>

                </tr>
                 <tr>
                    <td class="row11">

                        SUBJECT   :
                        
                    </td>
                    <td class="column11">
                          <input type="text" class="Seveninput" placeholder="Subject..." title="Type in your subject">
                    </td>

                </tr>
                 <tr>
                    <td class="row12">

                        </td>
                    <td>

                    </td>

                </tr>
                 <tr>
                    <td class="row13">

                        MESSAGE  :
                        
                    </td>
                    <td class="column13">
                          <input type="text" class="Eightinput" placeholder="Message..." title="Type in your message">
                    </td>

                </tr>
                

                <tr>
                    <td>
                       </td>
                    <td>
                        <table>
                            </table>
                    </td>
                </tr>
                <tr>
                    <td>
                        <a class="Contactbutton" href="ContactsUs.aspx">Submit</a>    
                        <asp:Button ID="btnSendEmail" runat="server" Text="Submit" OnClick="btnSendEmail_Click" />       
                    </td>

                  
                    
                </tr>
            </table>
        </td>
    </tr>
    <tr>
        <td>
           
            <asp:Literal ID="litResult" runat="server"></asp:Literal>
        </td>
    </tr>
</table>
    </form>
</asp:Content>
