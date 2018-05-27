<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="EmerseWebSite.Kurumsal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="page-title" class="page-title-parallax page-title-dark dark " style="background-image: url('images/about.jpg'); padding: 210px 0;"
        data-stellar-background-ratio="0.3">

        <div class="container clearfix">
            <h1>Kurumsal</h1>
            <p style="font-size: 20px; color: white">Hakkımızda</p>
            <%-- <ol class="breadcrumb">
                    <li><a href="portfolio-1.html#">Home</a></li>
                    <li><a href="portfolio-1.html#">Portfolio</a></li>
                    <li class="active">Portfolio - Classic</li>
                </ol>--%>
        </div>

    </section>

    <section id="content">

        <div class="content-wrap bgcolor-grey-light">

            <div class="container clearfix">

                <div class="clear"></div>

                <div id="portfolio" class="portfolio-1 clearfix ">
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                            <article class="portfolio-item alt  clearfix">
                          
                                <div class="portfolio-desc">
                                    
                                       
                                     <%#Eval("text") %>
                                    
                                </div>

                            </article>
                        </ItemTemplate>
                    </asp:Repeater>
                </div>

                <script type="text/javascript">

                    jQuery(window).load(function () {

                        var $container = $('#portfolio');

                        $container.isotope({ transitionDuration: '0.65s' });

                        $('#portfolio-filter a').click(function () {
                            $('#portfolio-filter li').removeClass('activeFilter');
                            $(this).parent('li').addClass('activeFilter');
                            var selector = $(this).attr('data-filter');
                            $container.isotope({ filter: selector });
                            return false;
                        });

                        $('#portfolio-shuffle').click(function () {
                            $container.isotope('updateSortData').isotope({
                                sortBy: 'random'
                            });
                        });

                        $(window).resize(function () {
                            $container.isotope('layout');
                        });

                    });

                </script>
                <!-- Portfolio Script End -->

            </div>



        </div>

    </section>

</asp:Content>
