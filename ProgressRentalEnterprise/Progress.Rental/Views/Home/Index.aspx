<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ProgressMain.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Progress Residential
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>
        .DefaultImage {
            background-image: url("../Images/SiteImages/DefaultImage.png");
            background-repeat: no-repeat;
            background-position: 50% 50%;
            width: 100%;
            height: 100%;
        }
    </style>
    <style>
        .input[type="text"]::-ms-clear {
            display: none;
        }
    </style>


    <div id="hero-container">
        <ul class="cb-slideshow">
            <li><span></span></li>

            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
        </ul>

        <div class="container" style="padding-top: 60px;">
            <div class="navbar transparent ">
                <div class="container">

                    <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
                    <button class="navbar-toggle" data-target=".navbar-responsive-collapse" data-toggle="collapse" type="button">
                    </button>

                    <div style="padding-left: 44px;">
                        <a class="navbar-brand" href="../Home">

                            <!-- FERVOR EDIT - UPDATED LOGO file and added alt tag -->
                            <img src="../../Images/SiteImages/logo-01.png" class="img-responsive" alt="Progress Residential Logo" />
                        </a>
                    </div>

                    <div id="navmain" class="">
                        <div class="pull-left"></div>

                        <div class="transparent">

                            <ul class="nav navbar-nav pull-right" style="padding-right: 80px;">
                                <li>

                                    <a href="../Documents/Progress_Residential_Application.pdf" target="_blank">Apply</a>

                                    <!-- here added another HREF that takes relative path of the file and opens in the new 	tab, make it sure that 	Application.pdf is in the same directory as index.html-->

                                </li>
                                <li><a href="https://progress.aptexx.com" target="_blank">Log In</a></li>
                                <!-- <li><%: Html.ActionLink("Help", "Help", "Home") %></li> -->
                            </ul>
                            <!-- end nav pull-right -->
                        </div>
                    </div>
                    <!-- end nav-collapse -->
                </div>
            </div>
            <!-- end nav bar -->


            <div class="container searchHeaderFixed">
                <div class="row" style="margin: auto 0px;">
                    <!--
REMOVE THIS DIV
                    <div class="col-3">
                    </div>
-->
                    <div class="col-7 center-block">
                        <div class="headw">Find <i>your</i> perfect home</div>
                        <form novalidate role="form" action="PropertyDetails/" method="get">
                            <div>

                                <!-- REMOVED INVALID BACKGROUND STYLE, AND ADDED TO CSS  -->
                                <div class="Searchtext ">

                                    <input id="s" name="s" type="text" style="padding: 1.60%; color: #FFF;" class="input">
                                    <input class="searchButton input-group-addon btn btn-green ftypeca fbold fsize18 bbord tboxh60 " value="Search" type="submit">
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
                    <!--
REMOVE THIS DIV
                    <div class="col-3">
                    </div>
-->
                </div>
            </div>

        </div>
    </div>


    <!-- This is the blank space between the first picture and the second pitcure, <br> has been added to increase the heigth of div-->

    <div class="search-panel2 clearfix">
        <br>
        <br>
    </div>

    <div id="hero-container3">


        <!-- FERVOR EDIT - Remove img, and ADD div -->
        <!-- <img src="images/banner.png" style="width: 100%;"> -->

        <div class="community">
            <div class="inner">
                <h2>Your Home. Your Community.</h2>
                <p>Over 75% of our homes are in master-planned communities, and we pay the fees so you can enjoy all the amenities with none of the headaches. Come home to Progress Residential.</p>
            </div>
        </div>

    </div>
    <br>
    <br>
    <br>
    <br>
    <div class="home-wrapper">
        <div class="home-content">
            <h2 class="osLight fcolora fbold fsize36">Your Experience is Our Priority</h2>
            <h3 class="osLight fbold fsize16 opa8">We judge ourselves by our residents' experiences</h3>
            <br>
            <br>
            <br>
            <br>
            <div class="row pb40" style="margin: auto 0px;">
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    <h3 class="osLight fcolorg fsize12 fbold" style="text-align: left; padding-left: 206px;">OUR RESIDENTS</h3>
                    <div id="home-testimonials" class="carousel slide carousel-wb mb20" data-ride="carousel">
                        <!--<ol class="carousel-indicators">
                        <li data-target="#home-testimonials" data-slide-to="0" class="active"></li>
                        <li data-target="#home-testimonials" data-slide-to="1" class=""></li>
                    </ol>-->
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="../../Images/SiteImages/avatar_1.jpg" class="home-testim-avatar" alt="Jane Smith">
                                <div class="home-testim">

                                    <!-- FERVOR EDIT  - Remove inline style. Added new testimonial copy -->
                                    <div class="home-testim-text fsize20 ">
                                        "
                                        <br>
                                        My Leasing Specialist, Diane, was amazing! Within minutes of my realtor contacting her, I had an application. I sent it to Diane that day, and in less than 24 hours, I was approved.
									   <br>
                                        When I went to my walk-through, two representatives were waiting in the doorway. They took the time to show me around and answer every question. Thanks to Progress Residential, I am living in my dream home!
                                        <br>
                                        "

                                    </div>

                                    <div class="home-testim-name ftypeca fsize14 fbold " style="padding-left: 55px;">
                                        <br>
                                        DAWN COONS
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
                                <img src="../../Images/SiteImages/avatar_2.jpg" class="home-testim-avatar" alt="Jane Smith">
                                <div class="home-testim">

                                    <!-- FERVOR EDIT  - Remove inline style. Added new testimonial copy -->
                                    <div class="home-testim-text fsize20 ">
                                        "
                                        <br>
                                        I love my job! It’s not only matching customers with the right homes, but also helping them navigate their way through a smooth leasing process. Dawn knew what she wanted in a home, and she was such a pleasure to assist. I’m glad I was part of the team that helped make her feel at home with Progress Residential.
                                        <br>
                                        "

                                    </div>
                                    <div style="padding-left: 55px;" class="home-testim-name ftypeca fsize14 fbold ">
                                        <br>
                                        DIANE AUSTIN, LEASING SPECIALIST
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="hero-container2" style="background-color: #fff;">

        <!-- FERVOR EDIT  - Remove .pb40  -->
        <div class="row" style="margin: auto 0px;">

            <!-- FERVOR EDIT  - Remove <br>s  -->
            <!--
            <br>
            <br>
-->

            <!-- FERVOR EDIT  - add clearfix to .search-panel2  -->
            <div class="search-panel2 clearfix">

                <form novalidate class="form-inline" role="form" action="PropertyDetails/" method="get">


                    <div class="box_upcoming">
                        <div class="form-group fsize20">
                            Find <i>your</i> perfect home&nbsp;&nbsp;
                        </div>

                        <div class="form-group">
                            <div class="input-group">

                                <!-- FERVOR EDIT  - Remove inline style  -->
                                <input class="searchTextbox form-control marr ftypeca fbold fcolorBlack fsize16 input" id="citys" name="s" type="text">
                            </div>
                        </div>
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

                        <div class="form-group">

                            <input class="searchButton btn btn-green marl ftypeca fbold fsize14 bbord tboxw120" value="Search" type="submit">
                        </div>
                    </div>



                </form>
            </div>

        </div>
    </div>









</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">

    <script>
     

     

    </script>

    <%--  <link href="../../Content/cssOther/bootstrap.css" rel="stylesheet">
    <link href="../../Content/cssOther/styles.css" rel="stylesheet">
    <script src="../../Scripts/jsOther/bootstrap_002.js"></script>

    <script src="../../Scripts/jsOther/epw6hwg.js"></script>
    <script>try { Typekit.load(); } catch (e) { }</script>--%>






    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    <script type="text/javascript" src="../../Scripts/jsOther/jquery.easing.1.3.js"></script>
    <!-- the jScrollPane script -->
    <script src="../../Scripts/jquery-1.7.1.min.js"></script>
    <script src="../../Scripts/jquery-ui-1.8.20.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            //var uagent = navigator.userAgent.toLowerCase();
            //if (uagent.search("iphone") > -1)
            //    document.write("<b><center><font size='5'>Please view our website on your desktop or laptop. Thank you.</font></center></b>");
            //else if (uagent.search("ipad") > -1)
            //    document.write("<b><center><font size='5'>Please view our website on your desktop or laptop. Thank you.</font></center></b>");
            //else if (uagent.search("nokia") > -1)
            //    document.write("<b><center><font size='5'>Please view our website on your desktop or laptop. Thank you.</font></center></b>");
            //else if (uagent.search("ipod") > -1)
            //    document.write("<b><center><font size='5'>Please view our website on your desktop or laptop. Thank you.</font></center></b>");
            //else if (uagent.search("samsung") > -1)
            //    document.write("<b><center><font size='5'>Please view our website on your desktop or laptop. Thank you.</font></center></b>");
            //else if (uagent.search("blackberry") > -1)
            //    document.write("<b><center><font size='5'>Please view our website on your desktop or laptop. Thank you.</font></center></b>");
            //else if (uagent.search("lg") > -1)
            //    document.write("<b><center><font size='5'>Please view our website on your desktop or laptop. Thank you.</font></center></b>");
            //else
            //    return true;

            if (/Android|webOS|iPhone|iPad|iPod|BlackBerry|IEMobile|Opera Mini/i.test(navigator.userAgent)) {
                document.write("<b><center><font size='5'>Please view our website on your desktop or laptop. Thank you.</font></center></b>");
            }
            else
                return true;


        });
    </script>

    <script type="text/javascript" src="../../Scripts/jsOther/jquery.contentcarousel.js"></script>

    <script type="text/javascript">
        $('#ca-container').contentcarousel();
    </script>


    <ul style="z-index: 1; top: 0px; left: 0px; display: none;" aria-activedescendant="ui-active-menuitem" role="listbox" class="ui-autocomplete ui-menu ui-widget ui-widget-content ui-corner-all"></ul>



</asp:Content>
