<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GalleryUpdate.aspx.cs" Inherits="EmerseWebSite.Admin.ImageUpdate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <div class="container" style="margin-top: 50px">
        <div style="margin-left: 150px">
            <asp:Label ID="Label1" runat="server" CssClass="gridLbl" Text="Image Name:"></asp:Label><br />
            <asp:TextBox ID="txtImage" runat="server" CssClass="gridTextImage"></asp:TextBox>
        </div>
        <div style="margin-left: 150px">
            <asp:Label ID="Label2" runat="server" CssClass="gridLbl" Text="Kategori Adı:"></asp:Label><br />
            <asp:DropDownList ID="dropDownList" runat="server" CssClass="gridTextImage"></asp:DropDownList>
        </div>
        <%--<div style="margin-left: 150px;margin-top: 15px">
        <asp:Label ID="Label2" runat="server" CssClass="gridLbl" Text="Thumbnail Image:"></asp:Label>
        <div style="margin-top: 7px">
            <asp:FileUpload ID="FileUploadThumbnail" runat="server" />
        </div>
    </div>--%>
        <div style="margin-left: 150px; margin-top: 15px">
            <asp:Label ID="Label3" runat="server" CssClass="gridLbl" Text="Resim:"></asp:Label>
            <div style="margin-top: 7px">
                <asp:FileUpload ID="FileUploadImage" runat="server" />
            </div>
        </div>
        <div style="margin-left: 225px;margin-top: 20px">
            <asp:Button ID="btnImageEdit" runat="server" CssClass="gridButton" Text="Kaydet" OnClick="btnImageEdit_OnClick" />
        </div>
    </div>
</asp:Content>
