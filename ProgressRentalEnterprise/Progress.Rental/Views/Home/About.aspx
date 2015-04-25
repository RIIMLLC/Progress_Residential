<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ProgressMain.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    About
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/cssOther/fervor-about.css" rel="stylesheet" />
    <style>
        .input[type="text"]::-ms-clear {
            display: none;
        }
    </style>
    <div id="hero-container1">
        <div class="navbar transparent ">
            <div class="container">
                <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
                <button class="navbar-toggle" data-target=".navbar-responsive-collapse" data-toggle="collapse" type="button">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

                <div>
                    <a class="navbar-brand" href="../Home">
                        <img src="../../Images/SiteImages/color_logo1.png" class="img-responsive"></a>
                </div>
                <form novalidate class="form-inline" role="form" action="LoadPropertes/" method="get">
                    <div class="form-group form-group1">
                        <div class="input-group" style="width: 350px;">
                            <div class="searchfield">
                                <div class="zooom" id="divZoom">
                                    <input type="submit" style="border: none; color: transparent; background-color: transparent; height: 27px; width: 24px; margin-top: -16px;" value="" />
                                </div>
                                <input id="txtSearch" name="txtSearch" type="text" class="seearch input" style="color: #000 !important">
                            </div>
                            <!--searchfield-->
                        </div>
                    </div>
                </form>

                <div id="navmain" class="nav-collapse collapse navbar-responsive-collapse">
                    <div class="pull-left">
                    </div>

                    <div class="transparent">

                        <ul class="nav navbar-nav alt pull-right">
                            <li>

                                <a href="../Documents/Progress_Residential_Application.pdf" target="_blank">Apply</a>

                                <!-- here added another HREF that takes relative path of the file and opens in the new 	tab, make it sure that 	Application.pdf is in the same directory as index.html-->

                            </li>
                            <li>
                                <a href="https://progress.aptexx.com" target="_blank">Log In</a>
                            </li>
                            <!-- <li><%: Html.ActionLink("Help", "Help", "Home") %></li> -->
                        </ul>

                        <!-- end nav pull-right -->
                    </div>

                </div>
                <!-- end nav-collapse -->

            </div>
        </div>
    </div>

    <div class="clearfix"></div>

    <div class="row" style="margin: auto 0px;">
        <img src="../../Images/SiteImages/About_banner.jpg" style="width: 100%;">
    </div>

    <!-- Content -->
    <div class="home-wrapper">

        <div class="col-md-12">
            <div class="home-content">
                <h2 class="osLight" style="font-weight: bolder; color: #79D214">We Invest in You</h2>
                <h3 class="osLight fsize14" style="color: #555a5c; font-weight: bolder;">We don't invest in houses. We invest in communities. Communities that you can call home.</h3>

                <h4 class="osLight" style="color: #555a5c; text-align: center; font-size: 18px; line-height: 32px; margin-top: 30px; font-family: calluna;">Progress Residential does things a little bit differently. By carefully selecting well-maintained homes in planned communities, we provide added value to our customers, giving them greater flexibility to seize opportunities without sacrificing quality of life.
                    <br>
                    <br>
                    We are one of the largest providers of high quality single-family rental homes in the United States, with homes in the country’s fastest growing markets. Our corporate office is located in Scottsdale, Arizona. We also have regional offices in Tampa, Las Vegas, Dallas, Houston, and Atlanta, and we’re continuing to expand, making Progress every day.<br>
                    <br> 
                    Our experienced, knowledgeable, performance-oriented team is devoted to providing red-carpet customer care to help make finding, moving into, and living in a rental home an easy process—and an enjoyable one, too. Our mission is to provide the highest quality service to our future and current residents, employees, and investors through professionalism, integrity, and responsiveness.<br />
                    <br />
                    We are committed to creating a new way of living in the 21<sup>st</sup> century. We believe that we have a home for every lifestyle, and we can’t wait to show you how Progress starts here.
            </h4>
            </div>
        </div>

        <div class="clearfix"></div>
    </div>

    <div class="clearfix"></div>
    <div class="row greenwrap" style="margin: auto 0px;">
        <div class="home-wrapper">
            <div class="col-md-6">
                <img src="../../Images/SiteImages/tab-1_new.png" alt="">
            </div>
            <div class="col-md-6 greenwrap-right">
                <h1>PROGRESS, AT YOUR FINGERTIPS</h1>
                <p>Finding your dream home shouldn’t be a frustrating process, so we’ve worked to make searching our site flexible. Whether you want a home in a certain zip code or school district, with four bedrooms or a patio, we want you to find what you’re looking for in just two clicks. </p>

            </div>
        </div>
        <!--home-wrapper-->
    </div>
    <!--greenwrap-->

    <div class="home-wrapper">
        <div class="home-content">

            <div class="row pb40">

                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">

                    <div id="Div1" class="carousel slide carousel-wb mb20" data-ride="carousel">

                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="../../Images/SiteImages/avatar-1_new.png" class="home-testim-avatar" alt="Jane Smith">
                            </div>

                        </div>
                    </div>

                    <div id="Div9" class="carousel slide carousel-wb mb20" data-ride="carousel">

                        <div class="carousel-inner">
                            <div class="home-testim1">
                                <div class="home-testim1-textAboutUs osLight" style="font-size: 16px;">
                                    <h5 class="fboldAboutUs" style="font-family: sofia-pro,sans-serif; font-weight: bold; font-size: 16px;">THOUSANDS OF QUALITY HOMES</h5>
                                    "Not only do we have a large selection of homes, but 
                                        those homes are carefully selected to ensure that we put quality first. Our stringent standards for finishes, 
                                        school district, and floor plans ensure that when you rent a Progress Residential home you know you have a 
                                        space you can be proud to show to your friends."
                                </div>
                            </div>

                        </div>
                    </div>


                </div>

                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">

                    <div id="Div2" class="carousel slide carousel-wb mb20" data-ride="carousel">

                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="../../Images/SiteImages/avatar-2.png" class="home-testim-avatar" alt="Jane Smith">
                            </div>

                        </div>
                    </div>

                    <div id="Div3" class="carousel slide carousel-wb mb20" data-ride="carousel">

                        <div class="carousel-inner">
                            <div class="home-testim1">
                                <div class="home-testim1-textAboutUs osLight" style="font-size: 16px;">
                                    <h5 class="fboldAboutUs" style="font-family: sofia-pro,sans-serif; font-weight: bold; font-size: 16px;">EASY TO USE</h5>
                                    "We've simplified the process to emphasize what's 
                                        important to you, as a resident. Exactly what you need and less of what you don't."
                                </div>
                            </div>

                        </div>
                    </div>


                </div>

                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">

                    <div id="Div4" class="carousel slide carousel-wb mb20" data-ride="carousel">

                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="../../Images/SiteImages/avatar-3.png" class="home-testim-avatar" alt="Jane Smith">
                            </div>

                        </div>
                    </div>

                    <div id="Div5" class="carousel slide carousel-wb mb20" data-ride="carousel">

                        <div class="carousel-inner">
                            <div class="home-testim1">
                                <div class="home-testim1-textAboutUs osLight" style="font-size: 16px;">
                                    <h5 class="fboldAboutUs" style="font-family: sofia-pro,sans-serif; font-weight: bold; font-size: 16px;">WHAT MATTERS MOST</h5>

                                    "Our commitment to our residents is what matters most to us. 
                                       Whether you have questions about our rental process or what it means to live in a planned community, we have experts available to help you
                                        24/7/365. We believe that if we “wow” you every times, you’ll never want to leave."
                                </div>
                            </div>

                        </div>
                    </div>


                </div>

                <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">

                    <div id="Div6" class="carousel slide carousel-wb mb20" data-ride="carousel">

                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="../../Images/SiteImages/avatar-4.png" class="home-testim-avatar" alt="Jane Smith">
                            </div>

                        </div>
                    </div>

                    <div id="Div7" class="carousel slide carousel-wb mb20" data-ride="carousel">

                        <div class="carousel-inner">
                            <div class="home-testim1">
                                <div class="home-testim1-textAboutUs osLight" style="font-size: 16px;">
                                    <h5 class="fboldAboutUs" style="font-family: sofia-pro,sans-serif; font-weight: bold; font-size: 16px;">MADE WITH INTEGRITY</h5>
                                    "Our approach is different. We’re not just renting houses, 
                                        we’re helping people find their homes. We don’t like to settle, and neither do our residents. So we
                                        partner with you to find the perfect space for you at every stage of your life."
                                </div>
                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div>
        <img src="../../Images/about_testimonial copy.png" class="img-responsive" alt="" width="100%">
    </div>

    <!-- <div class="testiwrap">
       <div class="home-wrapper">
            <div class="col-md-12">
                <img src="../../Images/about_testimonial.png" class="img-responsive" alt="">
            </div>
             <div class="col-md-7">
                <div role="tabpanel">

                    <!-- Tab panes -->
    <!-- <div class="tab-content" style="margin-top: 150px;">
                        <div role="tabpanel" class="tab-pane active" id="home">
                            <img src="../../Images/SiteImages/test-text.jpg" width="685" height="229" alt="">
                        </div>
                        <div role="tabpanel" class="tab-pane" id="profile">
                            <img src="../../Images/SiteImages/test-text.jpg" width="685" height="229" alt="">
                        </div>
                        <div role="tabpanel" class="tab-pane" id="messages">
                            <img src="../../Images/SiteImages/test-text.jpg" width="685" height="229" alt="">
                        </div>
                    </div>

                </div> 
            </div>
        </div>
        <!--home-wrapper-->
    <!-- <div class="clearfix"></div>
    </div>
    <!--testiwrap-->

    <div class="clearfix"></div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            //$("#txtSearch").focus(function () {
            //    if ($(this).val() == "Search Properties")
            //        $(this).val('');
            //});
            //$("#txtSearch").blur(function () {
            //    if ($(this).val() == "")
            //        $(this).val('Search Properties');
            //});

            //$("#txtSearchNext").focus(function () {
            //    if ($(this).val() == "Search Properties")
            //        $(this).val('');
            //});
            //$("#txtSearchNext").blur(function () {
            //    if ($(this).val() == "")
            //        $(this).val('Search Properties');
            //});


            $('#btnSearch').click(function () {
                var searchString = $('#txtSearchNext').val();
                var url = '<%=Url.Action("Index", "PropertyDetails", new { s = "__id__" })%>';
                window.location.href = url.replace('__id__', searchString);
            });
            $('#divZoom').click(function () {
                var searchString = $('#txtSearch').val();
                var url = '<%=Url.Action("Index", "PropertyDetails", new { s = "__id__" })%>';
                window.location.href = url.replace('__id__', searchString);
            });

        });
    </script>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
