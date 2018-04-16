<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Web_Application2.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="Title" runat="server">
    Register page - Create New Account
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="Heading1" runat="server">
    Register New Account  
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <form ID="Form1" runat="server">
        <div ID ="txtNote">Create new account is easy. Just fill in the form below.</div>
        <table class="tblReg">
            <tr>
                <td>
                    <asp:Label ID="lblUsername" runat="server" Text="Username" CssClass="txtUsername"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="txtRegEmail" runat="server"  CssClass="txtInput" ToolTip="Fill in username"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="lblPassword" runat="server" Text="Password" CssClass="txtPassword"></asp:Label> 
                </td>
                <td>
                    <asp:TextBox ID="txtRegPassword" runat="server" CssClass="txtInput" ToolTip="Fill in password" TextMode="Password" ></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2"> 
                    <asp:Literal ID="litRegisterMessage" runat="server"></asp:Literal> 

                </td> 
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnRegister" runat="server" Text="CREATE ACCOUNT" CssClass="btnReg" OnClick="btnRegister_Click"/>   
                </td>
                
                
            </tr>
        </table>
      
        </form>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="GoogleMap" runat="server">
</asp:Content>
