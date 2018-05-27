<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="EmerseWebSite.Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="page-title" class=" page-title-dark dark " style="background-image: url('images/iletisim.jpg'); padding: 210px 0;">

        <div class="container clearfix">
            <h1>İletişim</h1>
            <p style="font-size: 20px; color: white">Kaliteli Reklamcılığın Adresi Reklam 8</p>
        </div>

    </section>

    <section id="content">
        <div class="content-wrap bgcolor-grey-light nopadding ">

            <div class="section parallax notopmargin nobottommargin notopborder">
                <div class="container">
                    <div id="contact-form-overlay" class="clearfix bgcolor-grey-light">


                        <div class="fancy-title heading-block" style="margin-bottom: 20px">
                            <h3>İletişim</h3>
                            <p>Görüş,öneri ve şikayetleriniz için formu doldurarak bizimle iletişime geçebilirsiniz.</p>
                        </div>
                        <div id="contact-form-result" data-notify-type="success" data-notify-msg="<i class=icon-ok-sign></i> Message Sent Successfully!"></div>


                        <form id="form1" runat="server">
                            <div class="col_half">
                                <label>Ad Soyad <small>*</small></label>
                                <input runat="server" type="text" id="txtAd" value="" class="sm-form-control required" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtAd"
                                    CssClass="text-danger" ErrorMessage="Ad Boş Geçilemez." />
                            </div>

                            <div class="clear"></div>

                            <div class="col_half">
                                <label>E-mail <small>*</small></label>
                                <input runat="server" type="text" id="txtMail" value="" class="sm-form-control required" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMail"
                                    CssClass="text-danger" ErrorMessage="Mail Boş Geçilemez." />
                                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator23"
                                    SetFocusOnError="true" Text="Örnek:kullanıcı@gmail.com" ControlToValidate="txtMail"
                                    ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" />
                            </div>

                            <div class="col_half">
                                <label>Telefon No <small>*</small></label>
                                <input runat="server" type="text" id="txtTelefon" value="" class="sm-form-control required" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtTelefon"
                                    CssClass="text-danger" ErrorMessage="Telefon No Boş Geçilemez" />
                                <asp:RegularExpressionValidator runat="server" ID="RegularExpressionValidator1"
                                    SetFocusOnError="true" Text="Örnek:0XXX XXX XX XX" ControlToValidate="txtTelefon"
                                    ValidationExpression="^(0(\d{3}) (\d{3}) (\d{2}) (\d{2}))$" Display="Dynamic" />
                                
                            </div>
                            <div class="col_half">
                                <label>Konu <small>*</small></label>
                                <input runat="server" type="text" id="txtKonu" value="" class="sm-form-control required" />
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtKonu"
                                    CssClass="text-danger" ErrorMessage="Konuyu Giriniz." />
                            </div>
                            <div class="clear"></div>
                            <div class="col_full">
                                <label>Mesaj <small>*</small></label>
                                <textarea runat="server" id="txtMesaj" class="required sm-form-control" rows="6" cols="30"></textarea>
                                <asp:RequiredFieldValidator runat="server" ControlToValidate="txtMesaj"
                                    CssClass="text-danger" ErrorMessage="Mesaj Alanını Doldurunuz." />

                            </div>
                            <div class="col_full">
                                <asp:Button class="button button-medium nomargin" ID="btnSend" runat="server" Text="Gonder" OnClick="btnSend_OnClick" />

                                <%--<button class="button button-medium nomargin" type="submit" id="btn"
                                    value="submit" runat="server" on>Giriş
                                </button>--%>
                            </div>
                            <asp:Label ID="Label" runat="Server" ForeColor="Red" Visible="false" />
                        </form>

                        <div class="line"></div>


                        <div class="nobottommargin notopmargin">
                            <div class="panel panel-default events-meta">
                                <div class="panel-heading">
                                    <h3 class="panel-title">İletişim Bilgileri</h3>
                                </div>
                                <div class="panel-body">
                                    <ul class="iconlist nobottommargin">
                                        <li>
                                            <img src="images/adres.png" />
                                            Kanal Mahallesi 4767 Sokak Kula Apt. No:2/8 Kepez/ANTALYA</li>
                                        <li>
                                            <img src="images/telefon.png" />
                                            + 90 242 332 10 20</li>
                                        <li>
                                            <img src="images/mail.png" />
                                            info@reklam8antalya.com</li>
                                    </ul>
                                </div>
                            </div>

                        </div>
                    </div>

                    <div class="clear"></div>
                </div>
            </div>
            <div class="nopadding" style="margin-left: 260px">
                <iframe src="https://www.google.com/maps/embed?pb=!1m17!1m8!1m3!1d6381.938991806533!2d30.709816000000004!3d36.891078!3m2!1i1024!2i768!4f13.1!4m6!3e6!4m0!4m3!3m2!1d36.8968908!2d30.7133233!5e0!3m2!1str!2sus!4v1478090127874" width="1090" height="450" frameborder="0" style="border: 0" allowfullscreen></iframe>
            </div>
        </div>
    </section>
</asp:Content>
