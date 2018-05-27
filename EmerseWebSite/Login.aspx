<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="EmerseWebSite.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <section id="content">
        <div class="content-wrap bgcolor-grey-light notoppadding nobottompadding">

            <div class="section parallax notopmargin nobottommargin notopborder"
                style="background-image: url('image/30_lg.jpg'); padding: 100px 0 115px 0;" data-stellar-background-ratio="0.3">
                <div class="container">

                    <!-- Contact Form Overlay
                ============================================= -->
                    <div id="contact-form-overlay" class="clearfix bgcolor-grey-light">

                        <div class="fancy-title heading-block">
                            <h3>Giriş Yapın</h3>
                        </div>

                        <div id="contact-form-result" data-notify-type="success" data-notify-msg="<i class=icon-ok-sign></i> Message Sent Successfully!"></div>
                        <form id="form1" runat="server">
                             <div class="col_half" style="margin-left: 150px">
                                <label>Kullanıcı Adı <small>:</small></label>
                                <input runat="server" type="text" id="k_adi" value="" class="sm-form-control required" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="k_adi"
                                CssClass="text-danger" ErrorMessage="Kullanıcı Adı Boş Geçilemez." />
                             </div>

                            <div class="clear"></div>
                            
                            <div class="col_half col_last" style="margin-left: 150px">
                                <label>Şifre <small>:</small></label>
                                <input id="sifre" runat="server" type="password" class="sm-form-control required" />                           
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="sifre"
                                CssClass="text-danger" ErrorMessage="Şifre Boş Geçilemez." />
                            </div>
                            <div class="clear"></div>
                            <div class="col_full" style="margin-left: 150px">
                                <asp:Button class="button button-medium nomargin" ID="btnLogin" runat="server" Text="Giriş" OnClick="btnLogin_OnClick"/>

                                <%--<button class="button button-medium nomargin" type="submit" id="btn"
                                    value="submit" runat="server" on>Giriş
                                </button>--%>
                            </div>
                             <asp:Label id="Label" runat="Server" ForeColor="Red" Visible="false"/>
                        </form>

                      

                        <div class="line"></div>

                        <%--<div class="col_one_third nobottommargin notopmargin">
                        </div>--%>
                    </div>
                    <!-- Contact Form Overlay End -->

                    <div class="clear"></div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
