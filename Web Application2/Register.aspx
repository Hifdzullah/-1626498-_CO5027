<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Web_Application2.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Register page - Create New Account
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    Register New Account  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <form ID="registerForm" runat="server">
        <div ID ="txtNote">Create new account is easy. Just fill in the form below.</div>
        <table class="tblReg">
            <tr>
                <th>
                    <asp:Label ID="lblUsername" runat="server" Text="Username" CssClass="txtUsername"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtRegEmail" runat="server"  CssClass="txtInput" ToolTip="Fill in username"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="reqUsername" runat="server" ControlToValidate="txtRegEmail" ErrorMessage="* Username field is required" CssClass="txtErrorMessage" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="txtPassword"></asp:Label> 
                </th>
                <td>
                    <asp:TextBox ID="txtRegPassword" runat="server" CssClass="txtInput" ToolTip="Fill in password" TextMode="Password" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp
                </td> 
                <td>
                    <asp:RequiredFieldValidator ID="reqPassword" runat="server" ControlToValidate="txtRegPassword" ErrorMessage="* Password field is required" CssClass="txtErrorMessage" Display="Dynamic"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <th>
                    <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password" CssClass="txtPassword"></asp:Label>
                </th>
                <td>
                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="txtInput" ToolTip="Confirm your password" TextMode="Password"></asp:TextBox>          
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp
                </td>
                <td>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Your password is not match" ControlToCompare="txtRegPassword" ControlToValidate="txtConfirmPassword" CssClass="txtErrorMessage"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnRegister" runat="server" Text="CREATE ACCOUNT" CssClass="btnReg" OnClick="btnRegister_Click"/>   
                </td>  
            </tr>
        </table>
          <div id="registerLiteralColumn">
                <asp:Literal ID="litRegisterMessage" runat="server"></asp:Literal> 
            </div>
      </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
