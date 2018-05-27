<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GalleryContent.aspx.cs" Inherits="EmerseWebSite.Admin.GalleryContent" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

   
        <div class="gridContent">
            <asp:Button CssClass="gridButton" ID="btnInsertImage" runat="server" Text="Resim Ekle" OnClick="btnInsertImage_OnClick" />
        </div>
  

    <div class="gridContent">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="false" AllowPaging="True"
            PageSize="15" OnPageIndexChanging="GridView1_OnPageIndexChanging" CssClass="myGrid">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HiddenField ID="lblHiddenField" runat="server" Value='<%#Eval("ID")%>' Visible="False" />
                        <asp:ImageButton ID="imgEdit" runat="server" OnClick="imgEdit_OnClick" ImageUrl="~/images/btn-check.png" />
                        <asp:ImageButton ID="imgDelete" runat="server" OnClick="imgDelete_OnClick" ImageUrl="~/images/button_delete.png" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="name" HeaderText="Resim Adı" />
                <asp:BoundField DataField="ImageCategory.name" HeaderText="Kategori Adı" />
                <asp:TemplateField HeaderText="Resim">
                    <ItemTemplate>
                        <asp:Image ID="thumbImage" runat="server" ImageUrl='<%#(string) thumbUrl(Eval("thumbnailUrl")) %>' Width="100px" Height="100px" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="createDate" HeaderText="Oluşturulma Tarihi" />
                <asp:BoundField DataField="updateDate" HeaderText="Güncellenme Tarihi" />
                <asp:TemplateField HeaderText="Silinmiş mi" >
                    <ItemTemplate>
                        <asp:Image runat="server" ID="ImgBtnDeleted" ImageUrl='<%# (string)Bind_Deleted(Eval("deleted")) %>'/>
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
