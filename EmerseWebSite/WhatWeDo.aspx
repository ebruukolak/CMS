<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="WhatWeDo.aspx.cs" Inherits="EmerseWebSite.WhatWeDo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



    <section id="page-title" class="page-title-parallax page-title-dark dark " style="background-image: url('images/neleryapariz.jpg'); padding: 210px 0;"
        data-stellar-background-ratio="0.3">

        <div class="container clearfix">
            <h1>Neler Yaparız?</h1>
            <p style="font-size: 20px; color: white">Daha iyi, kaliteli bir Tabela!</p>
        </div>

    </section>

    <section id="content">
        <div class="content-wrap bgcolor-grey-light dark " style="margin-left: 260px">
            <div id="portfolio" class="portfolio-3 portfolio-nomargin portfolio-full clearfix" style="position: relative; height: 2184px">
                <asp:Repeater ID="Repeater1" runat="server">
                    <ItemTemplate>
                        <article class="portfolio-item pf-media pf-icons" style="padding-top: 20px; padding-left: 20px; width: 364px; height: 273px">
                            <div class="portfolio-image">
                                <a href="<%#Eval("url").ToString().Substring(2)%>" rel="lightbox">
                                    <asp:Image runat="server" ID="mainImage" ImageUrl='<%# Eval("thumbnailUrl")%>' />
                                </a>
                            </div>
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

    </section>




</asp:Content>
