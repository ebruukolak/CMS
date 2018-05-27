<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GalleryInsert.aspx.cs" Inherits="EmerseWebSite.Admin.GalleryInsert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
    <asp:Label id="Label" runat="Server" ForeColor="Red" CssClass="gridLbl" Visible="false"/>
    
    <div class="container" style="margin-top: 50px">
        <div style="margin-left: 150px">
            <asp:Label ID="Label2" runat="server" CssClass="gridLbl" Text="Kategori Adı:"></asp:Label><br />
            <asp:DropDownList ID="dropDownList" runat="server" CssClass="gridTextImage"></asp:DropDownList>
        </div>
        <div style="margin-left: 150px">
            <asp:Label ID="Label1" runat="server" CssClass="gridLbl" Text="Resim Adı:"></asp:Label><br />
            <asp:TextBox ID="txtImage" runat="server" CssClass="gridTextImage"></asp:TextBox>
        </div>
        
    
    <%--<div style="margin-left: 150px;margin-top: 15px">
        <asp:Label ID="Label2" runat="server" CssClass="gridLbl" Text="Thumbnail Image:"></asp:Label>
        <div style="margin-top: 7px">
            <asp:FileUpload ID="FileUploadThumbnail" runat="server" />
         </div>
    </div>--%>
        
    <div style="margin-left: 150px;margin-top: 15px">
        <asp:Label ID="Label3" runat="server" CssClass="gridLbl" Text="Resim:"></asp:Label>
        <div style="margin-top: 7px">
            <asp:FileUpload ID="FileUploadImage" runat="server" />
        </div>
    </div>
    <div style="margin-left: 225px;margin-top: 20px">
        <div>
            <asp:Button ID="btnImageInsert" runat="server" Text="Kaydet" CssClass="gridButton" OnClick="btnImageInsert_OnClick" />
        </div>
    </div>
       
    </div>
</asp:Content>
