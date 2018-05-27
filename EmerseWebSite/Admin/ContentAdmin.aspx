<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ContentAdmin.aspx.cs" Inherits="ProjectEmerse.Admin.ContentAdmin" %>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="gridContent">
        <asp:Button CssClass="gridButton" ID="btnImageInsert" runat="server" Text="İçerik Ekle" OnClick="btnImageInsert_OnClick" />
    </div>


    <div class="gridContent">
        <asp:GridView ID="Grid" runat="server" AutoGenerateColumns="false" AllowPaging="True"
            PageSize="20" OnPageIndexChanging="GridView1_OnPageIndexChanging" OnRowDataBound="GridView1_OnRowDataBound" CssClass="myGrid">
            <Columns>
                <asp:TemplateField>
                    <ItemTemplate>
                        <asp:HiddenField ID="lblHiddenField" runat="server" Value='<%#Eval("ID")%>' Visible="False" />
                        <asp:ImageButton ID="imgEdit" runat="server" OnClick="imgEdit_OnClick" ImageUrl="~/images/btn-check.png" />
                        <asp:ImageButton ID="imgDelete" runat="server" OnClick="imgDelete_OnClick" ImageUrl="~/images/button_delete.png" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:BoundField DataField="header" HeaderText="Başlık" />
                <asp:BoundField DataField="ContentCategory.name" HeaderText="Kategori Adı" />
                <asp:BoundField DataField="createDate" HeaderText="Oluşturulma Tarihi" />
                <asp:BoundField DataField="updateDate" HeaderText="Güncellenme Tarihi" />
                <asp:TemplateField HeaderText="Silinmiş mi">
                    <ItemTemplate>
                        <asp:Image runat="server" ID="ImgBtnDeleted" ImageUrl='<%#(string)Bind_Deleted(Eval("deleted")) %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>

        </asp:GridView>
    </div>


</asp:Content>
