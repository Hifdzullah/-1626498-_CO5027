<%@ Page Title="" Language="C#" MasterPageFile="~/AdminSite.Master" AutoEventWireup="true" CodeBehind="uploadImage.aspx.cs" Inherits="Web_Application2.Admin.uploadImage" %>
<asp:Content ID="Content1" ContentPlaceHolderID="tabTitle" runat="server">
    Upload Product Image - Admin Site
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainHeading" runat="server">
    Upload Product Image
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="Content" runat="server">
   
    <asp:FileUpload ID="btnImageUpload" runat="server" />
    <br />
    <br />
    <asp:Image ID="imgUpload" runat="server" CssClass="imgload" />
    <br />
    <br /> 
    <table class="tblImageButton">
        <tr>
            <td><asp:Button ID="btnUpload" runat="server" Text="Upload" CssClass="btnFormView" OnClick="btnUpload_Click" /> </td>
            <td><asp:Button ID="btnDelete" runat="server" CssClass="btnFormView" Text="Delete" OnClick="btnDelete_Click" /> </td>
        </tr>
    </table>
    <br />
    <br />
    <asp:Literal ID="litDeleteError" runat="server"></asp:Literal>

</asp:Content>
