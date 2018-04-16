<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_Application2.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Login page - Sign in account
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    Login Page
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
<form ID ="Form2" runat="server">
    <div ID ="txtLoginNote">To login just fill in the form below.</div>
    <table class="tblLogin">
        <tr>
            <td>
                <asp:Label ID="lblUsername" Text="Username" CssClass="txtUsername" runat="server"></asp:Label>
            </td>
            <td>
                <asp:TextBox ID="txtLogEmail" CssClass="txtInput" ToolTip="Fill in your username" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td>
                <asp:Label ID="lblPassword" Text="Password" CssClass="txtPassword" runat="server"></asp:Label></td>
            <td>
                <asp:TextBox ID="txtLogPassword" CssClass="txtInput" ToolTip="Fill in your password" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Literal ID="litLogMessage" runat="server"></asp:Literal>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <asp:Button ID="btnLog" Text="LOGIN" CssClass="btnLogin" OnClick="btnLog_Click" runat="server" />
            </td>
        </tr>
        </table>
   <div id="registerColumn">
       <p>Don't have account | 
         <asp:HyperLink ID="HyperLink1" NavigateUrl="~/Register.aspx" CssClass="txtRegHyperlink" runat="server">Register Now</asp:HyperLink>.</p>
   </div>

</form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
