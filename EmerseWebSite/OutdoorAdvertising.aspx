<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="OutdoorAdvertising.aspx.cs" Inherits="EmerseWebSite.OutdoorAdvertising" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <section id="page-title" class="page-title-parallax page-title-dark dark " style="background-image: url('images/acikreklamcilik.jpg'); padding: 210px 0;"
        data-stellar-background-ratio="0.3">

        <div class="container clearfix">
            <h1>Açık Hava Reklamcılığı</h1>
            <p style="font-size: 20px; color: white">Açıkhavada yapılan reklam, dışarıda hareket halindeki insanları yakalamak ve dikkatlerini çekmek için ideal</p>
        </div>

    </section>

    <section id="content">

        <div class="content-wrap bgcolor-grey-light ">

            <div class="container clearfix">
                <div class="clear"></div>

                <div id="portfolio" class="portfolio-1 clearfix ">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <article class="portfolio-item alt  clearfix">
                                   <%#Eval("text") %>
                            </article>
                        </ItemTemplate>
                    </asp:Repeater>

                </div>

                <script type="text/javascript">

                    jQuery(window).load(function () {

                        var $container = $('#portfolio');

                        $container.isotope({ transitionDuration: '0.65s' });



                    });

                </script>


            </div>



        </div>

    </section>






</asp:Content>
