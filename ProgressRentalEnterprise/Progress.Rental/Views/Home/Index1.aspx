<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<%@ Register Assembly="AjaxControlToolkit" Namespace="AjaxControlToolkit" TagPrefix="cc1" %>



<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Progress Residential
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .DefaultImage {
            background-image: url("../Images/DefaultImage.jpg");
            background-repeat: no-repeat;
            background-position: 50% 50%;
            width: 100%;
            height: 100%;
        }
    </style>
    <%-- <link href="../../Content/bootstrap.min.css" rel="stylesheet" />
    <script src="../../Scripts/bootstrap.min.js"></script>
       <link href="../../Content/styles.css" rel="stylesheet" />--%>



    <div id="hero-container">
        <ul class="cb-slideshow">
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
        </ul>

        <div class="container" style="padding-top: 50px;">
            <div class="navbar transparent ">
                <div class="container">

                    <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
                    <button class="navbar-toggle" data-target=".navbar-responsive-collapse" data-toggle="collapse" type="button">
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>

                    <div style="padding-left: 44px;">
                        <a class="navbar-brand" href="../Home">
                            <img src="../../Images/logo.png" class="img-responsive" /></a>
                    </div>



                    <div id="navmain" class="nav-collapse collapse navbar-responsive-collapse">
                        <div class="pull-left">
                        </div>

                        <div class="transparent">

                            <ul class="nav navbar-nav pull-right" style="padding-right: 80px;">
                                <li>
                                    <a href="https://rentprogress.securecafe.com/residentservices/apartmentsforrent/userlogin.aspx" target="_blank" class="fbold">Log In</a>
                                </li>
                                <li>

                                    <%: Html.ActionLink("Help", "Help", "Home",new{@class = "fbold" }) %>
                                   
                                </li>


                            </ul>
                            <!-- end nav pull-right -->
                        </div>

                    </div>
                    <!-- end nav-collapse -->

                </div>
            </div>
            <!-- end nav bar -->


            <div class="container searchHeaderFixed" style="padding-top: 230px">
                <div class="row">
                    <div class="col-3">
                    </div>
                    <div class="col-6">
                        <div class="headw">Find <i>your</i> perfect home</div>
                        <form role="form" action="PropertyDetails/" method="get">
                            <div>
                                <div class="Searchtext ">
                                    <input class="searchTextbox form-controls fbold fsize22 tboxw390 tboxh60 fcolor" type="text" id="s" name="s" placeholder="<%: (string)ViewBag.city %>" value="<%: (string)ViewBag.city %>" />
                                    <input class="searchButton input-group-addon btn btn-green fbold fsize18 bbord tboxh60" type="submit" value="Search" />
                                </div>

                                <div>
                                    <% if (ViewBag.List != null)%>
                                    <%{ %>
                                    <ul>
                                        <%foreach (var list in ViewBag.List) %>
                                        <%{ %>
                                        <li>"<%=Html.Encode(list) %>"
                                        </li>
                                        <%} %>
                                    </ul>
                                    <%} %>
                                </div>
                            </div>
                        </form>

                    </div>
                    <div class="col-3">
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="home-wrapper">
        <div class="home-content">
            <br />
            <br />
            <br />
            <br />
            <h2 class="tk-sofia-pro fcolora">Featured Homes for Rent</h2>
            <h3 class="tk-sofia-pro">A curated selected of homes in your area</h3>
            <br />
        </div>
    </div>
    <div id="idslider" style="margin-left: 202px;">

        <div class="container">
            <% if (Model != null && Model.Count > 0) %>
            <%{ %>
            <div class="thumbnails row">
                <%if (Model[0] != null) %>
                <% { %>
                <div class="col-3">

                    <a href="PropertyDetails/Property?p= <%= Html.Encode(Model[0].PropertyId) %>&k=<%= Html.Encode(Model[0].Street) %> &r=<%= Html.Encode("fe") %> ">
                        <div class="thumbnail">
                            <object data="<%= Html.Encode(Model[0].ImagePath) %>" type="image/png">
                                <img src="../../Images/DefaultImage.jpg" class="img-responsive DefaultImage" />
                            </object>


                            <div class="label label-success price" style="background-color:#74c913;">
                                $<%= Html.Encode(Model[0].MarketRent) %>
                            </div>

                            <div class="caption">
                                <div class=" propertybottom features ftypeca fsize16 fbold opa8">
                                    <div class="pull-left">
                                        <span><%= Html.Encode(Model[0].Beds ) %><%--<%= Html.Encode(item.BedRooms) %>--%> BR / <%= Html.Encode(string.Format("{0:0.##}", Model[0].Baths)) %><%--<%= Html.Encode(item.BathRooms) %>--%> BA</span>
                                    </div>
                                    <div class="pull-right">
                                        <span class="bath"><%= Html.Encode(Model[0].City) %><%--<%= Html.Encode(item.City) %>--%>, <%= Html.Encode(Model[0].States) %><%--<%= Html.Encode(item.States) %>--%></span>
                                    </div>
                                </div>
                            </div>
                            <!-- end caption -->
                        </div>
                        <!-- end thumbnail -->
                    </a>


                </div>
                <!-- end col-3 -->
                <%} %>







                <%if (Model.Count > 1 && Model[1] != null) %>
                <% { %>
                <div class="col-3 ">
                    <a href="PropertyDetails/Property?p= <%= Html.Encode(Model[1].PropertyId) %>&k=<%= Html.Encode(Model[1].Street) %> &r=<%= Html.Encode("fe") %> ">
                        <div class="thumbnail">
                            <object data="<%= Html.Encode(Model[1].ImagePath) %>" type="image/png" class="DefaultImage">
                                <img src="../../Images/DefaultImage.jpg" class="img-responsive DefaultImage" />
                            </object>

                            <div class="label label-success price" style="background-color:#74c913;">
                                $<%= Html.Encode(Model[1].MarketRent) %>
                            </div>

                            <div class="caption">
                                <div class=" propertybottom features ftypeca fsize16 fbold opa8">
                                    <div class="pull-left">
                                        <span><%= Html.Encode(Model[1].Beds ) %><%--<%= Html.Encode(item.BedRooms) %>--%> BR / <%= Html.Encode(string.Format("{0:0.##}", Model[1].Baths)) %><%--<%= Html.Encode(item.BathRooms) %>--%> BA</span>
                                    </div>
                                    <div class="pull-right">
                                        <span class="bath"><%= Html.Encode(Model[1].City) %><%--<%= Html.Encode(item.City) %>--%>, <%= Html.Encode(Model[1].States) %><%--<%= Html.Encode(item.States) %>--%></span>
                                    </div>
                                </div>
                            </div>
                            <!-- end caption -->
                        </div>
                        <!-- end thumbnail -->
                    </a>
                </div>
                <!-- end col-3 -->



                <%} %>






                <%if (Model.Count > 2 && Model[2] != null) %>
                <% { %>
                <div class="col-3 ">
                    <a href="PropertyDetails/Property?p= <%= Html.Encode(Model[2].PropertyId) %>&k=<%= Html.Encode(Model[2].Street) %> &r=<%= Html.Encode("fe") %> ">
                        <div class="thumbnail">
                            <object data="<%= Html.Encode(Model[2].ImagePath) %>" type="image/png" class="DefaultImage">
                                <img src="../../Images/DefaultImage.jpg" class="img-responsive DefaultImage" />
                            </object>

                            <div class="label label-success price" style="background-color:#74c913;">
                                $<%= Html.Encode(Model[2].MarketRent) %>
                            </div>

                            <div class="caption">
                                <div class=" propertybottom features ftypeca fsize16 fbold opa8">
                                    <div class="pull-left">
                                        <span><%= Html.Encode(Model[2].Beds ) %><%--<%= Html.Encode(item.BedRooms) %>--%> BR / <%= Html.Encode(string.Format("{0:0.##}", Model[2].Baths)) %><%--<%= Html.Encode(item.BathRooms) %>--%> BA</span>
                                    </div>
                                    <div class="pull-right">
                                        <span class="bath"><%= Html.Encode(Model[2].City) %><%--<%= Html.Encode(item.City) %>--%>, <%= Html.Encode(Model[2].States) %><%--<%= Html.Encode(item.States) %>--%></span>
                                    </div>
                                </div>
                            </div>
                            <!-- end caption -->
                        </div>
                        <!-- end thumbnail -->
                    </a>
                </div>
                <!-- end col-3 -->


                <%} %>

                <div class="col-1">
                </div>

                <div class="col-1" style="margin-top:60px">
                    <div class="thumbnail">
                        <img id="imgNext" src="../../Images/right-arrow.png" style="opacity: 0.3; height:60px" width="60" />
                        <!-- end caption -->
                    </div>
                    <!-- end thumbnail -->
                </div>
            </div>
            <%--end of row--%>

            <%} %>
        </div>
        <%--end of container--%>
    </div>

    <%--end of slider--%>

    <!-- Content -->
    <div id="hero-container3">
        <br />
        <br />
        <br />
        <br />
        <img src="images/banner.png" style="width: 100%;" />
    </div>
    <br />
    <br />
    <br />
    <br />
    <div class="home-wrapper">
        <div class="home-content">
            <h2 class="fcolora fbold fsize36 tk-sofia-pro">Your Experience is Our Priority</h2>
            <h3 class="fbold fsize16 opa8 tk-sofia-pro">We judge ourselves by our residents' experiences</h3>
            <br />
            <br />
            <br />
            <br />
            <div class="row pb40">
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    <h3 class="osLight fcolorg fsize12 fbold" style="text-align: left; padding-left: 206px;">OUR RESIDENTS</h3>
                    <div id="home-testimonials" class="carousel slide carousel-wb mb20" data-ride="carousel">
                        <!--<ol class="carousel-indicators">
                        <li data-target="#home-testimonials" data-slide-to="0" class="active"></li>
                        <li data-target="#home-testimonials" data-slide-to="1" class=""></li>
                    </ol>-->
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="images/Homepage_3_24.jpg" class="home-testim-avatar" alt="Jane Smith">
                                <div class="home-testim">
                                    <div class="home-testim-text fsize20 " style="font-family: 'sofia-pro','calluna'; font-weight: bolder; color: black; opacity: 0.6">
                                        "
                                        <br />
                                        Elizabeth really listened when we told her what our family needed. She helped us find the perfect
                                        home in an ideal neighborhood, close to schools and work.
                                    </div>

                                    <div class="home-testim-name ftypeca fsize14 fbold " style="padding-left: 55px;">
                                        <br />
                                        SALLY & BRENDA N JENKINS
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    <h3 class="osLight fcolorg fsize12 fbold" style="text-align: left; padding-left: 206px;">OUR TEAM</h3>
                    <div id="Div1" class="carousel slide carousel-wb mb20" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="images/Homepage_3_26.jpg" class="home-testim-avatar" alt="Jane Smith">
                                <div class="home-testim">
                                    <div class="home-testim-text fsize20 " style="font-family: 'sofia-pro','calluna'; font-weight: bolder; color: black; opacity: 0.6">
                                        "
                                        <br />
                                        Joan and John wanted a home that was close to schools and work, yet offered updated finishes so they
                                        could feel proud entertaining friends and family.
                                    </div>
                                    <div style="padding-left: 55px;" class="home-testim-name ftypeca fsize14 fbold ">
                                        <br />
                                        ELIZABETH GRIMALDI, MARKET MANAGER
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <br />
    <br />


    <div id="hero-container2" style="background-color: #fff;">
        <div class="row pb40">
            <br>
            <br>
            <div class="search-panel2">

                <form class="form-inline" role="form" action="PropertyDetails/" method="get">
                    <div class="form-group home_search_txt_bot fsize20">
                        Find <i>your</i> perfect home&nbsp;&nbsp;
                    </div>
                    <div class="form-group">
                        <div class="input-group">
                            <input class="form-control marr ftypeca fbold fcolorBlack fsize16" type="text" id="city" name="s" placeholder="<%: (string)ViewBag.city %>" value="<%: (string)ViewBag.city %>" style="background-color: white; border-color: black; width: 100%" />

                        </div>
                        <div>
                            <% if (ViewBag.List != null)%>
                            <%{ %>
                            <ul>
                                <%foreach (var list in ViewBag.List) %>
                                <%{ %>
                                <li>"<%=Html.Encode(list) %>"
                                </li>
                                <%} %>
                            </ul>
                            <%} %>
                        </div>
                    </div>


                    <div class="form-group">

                        <input class="searchButton marl" id="home_sear_btn_bottom" type="submit" value="Search" />

                    </div>
                </form>
            </div>

        </div>
    </div>
    <%--<div class="row pb40" style="padding:10px ">
            <div class="row">
                <div class="col-3">

                </div>
                <div class="col-6">
                    <div class="SearchHeader">Find <i>your</i> perfect home</div>
                    <form  role="form" action="PropertyDetails/" method="get">
                    <div>
                        <div class="Searchtextbottom " >
                            <input class="searchTextbox" type="text" id="city" name="s" placeholder="<%: (string)ViewBag.city %>" value="<%: (string)ViewBag.city %>" />
                            <input class="searchButton " type="submit" value="Search" />
                           
                            
                        </div>

                      
                    </div>
                </form>

                </div>
                <div class="col-3">

                </div>
            </div>
        </div>--%>


    <script>
        $(function () {
            $('.carousel').carousel({
                interval: 20000
            });
        });

        $("#imgNext").click(
           function () {

               $.ajax({
                   cache: false,
                   type: 'GET',
                   url: '/home/homeindex',
                   data: null,
                   success: OnSuccessCall,
                   error: OnErrorCall
               });


           });

        var OnSuccessCall = function (data) {

            $('#idslider').html(data.valueOf(0))
        };

        var OnErrorCall = function err() { alert("error") };



    </script>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#s').autocomplete({
                source: '<%:Url.Action("AutocompleteAddress")%>'
            });

            $('#city').autocomplete({
                source: '<%:Url.Action("AutocompleteAddress")%>'
            });

        });
    </script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
