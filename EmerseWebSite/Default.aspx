<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="EmerseWebSite.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <section id="page-title" class="page-title-parallax page-title-dark dark " style="background-image: url('images/default.jpg'); padding: 210px 0;"
        data-stellar-background-ratio="0.3">

        <div class="container clearfix">
            <h1>Reklam 8</h1>
            <p style="font-size: 20px; color: white">Müşteride Güveni Yaratan Kalitedir</p>
        </div>

    </section>

    <section id="content">

        <div class="content-wrap bgcolor-grey-light">

            <div class="container clearfix">

                <div class="postcontent bothsidebar clearfix ">
                    <div id="posts">
                        <%--<div class="entry clearfix">--%>
                            <div class="entry-title">
                                <h1><a href="#">Neler Yaparız?</a></h1>
                            </div>
                            <div class="entry-image clearfix">
                                <div class="portfolio-single-image masonry-thumbs col-6" data-big="3" data-lightbox="gallery">
                                    <asp:Repeater ID="RepeaterImg" runat="server">
                                        <ItemTemplate>
                                            <a href="<%#Eval("url").ToString().Substring(2)%>" data-lightbox="gallery-item">
                                                <asp:Image runat="server" ID="mainImage" ImageUrl='<%# Eval("thumbnailUrl")%>' />
                                            </a>
                                        </ItemTemplate>
                                    </asp:Repeater>

                                </div>
                            </div>
                            <div class="entry-title">
                                <asp:Repeater ID="RepeaterIcerik" runat="server">
                                    <ItemTemplate>
                                        <div class="entry clearfix">
                                            <div class="entry-content">
                                                <%#(string)Bind_Text(Eval("text")) %>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>

                        <%--</div>--%>
                       
                            <div class="entry-image">
                                <div class="fslider" data-arrows="false" data-lightbox="gallery">
                                    <div class="flexslider">
                                        <div class="flex-viewport" style="overflow: hidden; position: relative;">
                                            <div class="slider-wrap" style="width: 1000%; transition-duration: 0.6s; transform: translate3d(-1944px, 0px, 0px);">
                                                <asp:Repeater ID="RepeaterResim" runat="server">
                                                    <ItemTemplate>
                                                        <div class="slide" style="float: left; display: block; width: 648px;">
                                                            <a href="#">
                                                                <img runat="server" class="image_fade" id="mainImage" src='<%# Eval("url")%>' alt draggable="false"/></a>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:Repeater>

                                            </div>
                                        </div>
                                        <ol class="flex-control-nav flex-control-paging">
                                            <asp:Repeater ID="Repeater1" runat="server">
                                                <ItemTemplate>
                                                    <%--<li data-animate="zoomIn" data-delay="0" class="not-animated"><a class="">1</a></li>--%>
                                                </ItemTemplate>
                                            </asp:Repeater>
                                        </ol>
                                    </div>
                                </div>
                            </div>
                            <div class="entry-title">
                                <asp:Repeater ID="RepeaterContent" runat="server">
                                    <ItemTemplate>
                                        <div class="entry clearfix">
                                            <div class="entry-content">
                                                 <%#(string)Bind_Text(Eval("text")) %>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        
                </div>
                <script type="text/javascript">

                    $(document).ready(function () {
                        $(".slide").first().addClass("flex-active-slide");

                    });

                </script>

            </div>


            <div class="sidebar col_last clearfix">
                <div class="sidebar-widgets-wrap bottommargin-lg">

                    <div class="widget clearfix">

                        <div class="tabs nobottommargin clearfix" id="sidebar-tabs">

                            <ul class="tab-nav clearfix">
                                <li><a href="#tabs-1">Duyurular</a></li>
                            </ul>

                            <div class="tab-container">

                                <div class="tab-content clearfix" id="tabs-1">
                                    <div id="popular-post-list-sidebar">

                                        <div class="spost clearfix">

                                            <div class="entry-c">
                                                <asp:Repeater ID="RepeaterDuyuru" runat="server">
                                                    <ItemTemplate>
                                                        <div class="entry-title">
                                                            <p class="nobottommargin"> <%#(string)Bind_Text(Eval("text")) %></p>
                                                        </div>
                                                    </ItemTemplate>
                                                </asp:Repeater>
                                            </div>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>

                        <script>
                            $(function () {
                                $("#sidebar-tabs").tabs({ show: { effect: "fade", duration: 400 } });
                            });
                        </script>
                    </div>

                </div>
            </div>

        </div>



        </div>

    </section>
    <script src="js/functions.js"></script>

</asp:Content>
