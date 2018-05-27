<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContentInsert.aspx.cs" Inherits="EmerseWebSite.Admin.ContentInsert" %>

<%@ Register Assembly="CKEditor.NET" Namespace="CKEditor.NET" TagPrefix="CKEditor" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
     <asp:Label id="Label" runat="Server" ForeColor="Red" CssClass="gridLbl" Visible="false"/>
      <div class="gridContent">
            <asp:Label ID="Label2" runat="server" CssClass="gridLbl"  Text="Kategori Adı:"></asp:Label><br />
            <asp:DropDownList ID="dropDownList" runat="server" CssClass="gridTextImage"></asp:DropDownList>
        </div>
    <div class="gridContent" style="margin-top: 20px">
        <asp:Label ID="Label1" runat="server" CssClass="gridLbl" Text="Başlık:"></asp:Label><br />
        <asp:TextBox ID="head" runat="server" CssClass="gridText" />
    </div>
    <div class="gridContent" style="margin-top: 20px">
        <asp:Label ID="lblText" runat="server" CssClass="gridLbl" Text="Metin:"></asp:Label>
        <%--<CKEditor:CKEditorControl ID="text" FilebrowserImageUploadUrl="" runat="server"></CKEditor:CKEditorControl>--%>
        <CKEditor:CKEditorControl ID="text" runat="server" FilebrowserImageUploadUrl="Upload.ashx" ></CKEditor:CKEditorControl>
    </div>
    <div >
        <asp:Button ID="btnInsert" runat="server" CssClass="gridInsertButton" Text="Kaydet" OnClick="btnInsert_OnClick" />
    </div>
    
    <%--<script type="text/javascript">
        $(function () {
            CKEDITOR.replace('<%=text.ClientID %>', { filebrowserImageUploadUrl: '~/Admin/Upload.ashx' });
        });
  </script>--%>

</asp:Content>
