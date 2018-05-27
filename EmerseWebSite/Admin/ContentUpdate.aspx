<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContentUpdate.aspx.cs" Inherits="EmerseWebSite.Admin.ContentUpdate" %>

<%@ Register TagPrefix="CKEditor" Namespace="CKEditor.NET" Assembly="CKEditor.NET, Version=3.6.6.2, Culture=neutral, PublicKeyToken=e379cdf2f8354999" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <div class="gridContent">
            <asp:Label ID="Label2" runat="server" CssClass="gridLbl"  Text="Kategori Adı:"></asp:Label><br />
            <asp:DropDownList ID="dropDownList" runat="server" CssClass="gridTextImage"></asp:DropDownList>
        </div>
    <div class="gridContent" style="margin-top: 20px">
        <asp:Label ID="lblHead" runat="server" CssClass="gridLbl" Text="Başlık:"></asp:Label><br />
        <asp:TextBox ID="head" runat="server" CssClass="gridText"></asp:TextBox>
    </div>
    <div class="gridContent" style="margin-top: 20px">
        <asp:Label ID="lblText" runat="server" CssClass="gridLbl" Text="Metin:"></asp:Label>
        <CKEditor:CKEditorControl ID="text" runat="server" FilebrowserImageUploadUrl="Upload.ashx"></CKEditor:CKEditorControl>
    </div>
    <div>
        <asp:Button ID="btnEdit" runat="server"  CssClass="gridInsertButton" Text="Kaydet" OnClick="btnEdit_OnClick" />
    </div>


</asp:Content>
