<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ProgressMain.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Careers
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/cssOther/fervor-careers.css" rel="stylesheet" />
    <!-- Header -->
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
                    <a class="navbar-brand alt" href="../Home">
                        <img src="../../Images/SiteImages/color_logo1.png" class="img-responsive"></a>
                </div>
                <form novalidate class="my_form-inline" role="form" action="LoadPropertes/" method="get">
                    <div class="form-group form-group1">
                        <div class="input-group" style="width: 350px;">
                            <div class="searchfield" style="background-color: #fff;">
                                <div class="zooom" id="divZoom">
                                    <input type="submit" style="border: none; color: transparent; background-color: transparent; height: 27px; width: 24px; margin-top: -16px;" value="" />
                                </div>
                                <%-- <input id="txtSearch" name="txtSearch" type="text" value ="Search Properties" class="seearch">--%>
                                <%--above line is commented by abdul by the assist of vijay raj and new line added below--%>
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
                    </div>

                </div>
                <!-- end nav-collapse -->
            </div>
        </div>
    </div>

    <div class="clearfix"></div>

    <!--drop down Menu part-->
    <!-- FERVOR EDIT - changed .my_home-footer1 div height to 27px -->
    <div class="my_home-footer1" style="height: 27px; text-align: center;">
        <!-- END FERVOR EDIT -->
        <!--<div  style="padding-top:40px; padding-bottom:40px; flex-align:center; margin-left:40%; margin-right:40%;">-->
        <div class="home-wrapper ftypeca fbold">
            <!-- FERVOR EDIT - removed search form from contact page -->
            <!-- END FERVOR EDIT -->
        </div>
    </div>
    <!-- Content -->


    <div class="home-wrapper contact-wrapper">
        <%--old code was removed by abdul by the assist of vijay raj according to fervor changes and new lines added below--%>
        <div class="help_bar">Careers</div>
        <div class="help_cntnt">
            <div class="left_sidebx">
                <!-- FERVOR EDIT - changed/added content -->
                <div class="careers">
                    <p class="intro">
                        At Progress Residential, we not only help residents find exceptional homes, but we also help talented professionals find meaningful careers by providing a dynamic work environment with opportunities for growth.
                    </p>

                    <p>
                        We offer the following benefits to full-time employees:<br>
                        <ul>
                            <li>Medical</li>
                            <li>Dental</li>
                            <li>Vision</li>
                            <li>Life Insurance</li>
                            <li>Paid time off</li>
                        </ul>
                    </p>

                    <p>And we have several career paths, including:</p>

                    <p>
                        Property Management<br>
                        <ul>
                            <li>Leasing Associates</li>
                            <li>Property Managers</li>
                        </ul>
                    </p>

                    <p>
                        Asset Management<br>
                        <ul>
                            <li>Analysts</li>
                            <li>Acquisitions Specialists</li>
                        </ul>
                    </p>

                    <p>
                        Construction & Maintenance<br>
                        <ul>
                            <li>Maintenance Technicians</li>
                            <li>Administrative Support</li>
                        </ul>
                    </p>

                    <p>
                        Corporate<br>
                        <ul>
                            <li>Accounting & Finance</li>
                            <li>Human Resources</li>
                            <li>Legal</li>
                            <li>Marketing</li>
                            <li>Information Technology</li>
                        </ul>
                    </p>

                    <p>Join our team today!</p>

                    <div class="form-group">
                        <input id="btnSearchJob" class="searchButton btn btn-green marl ftypeca fbold fsize12 bbord tboxw120" value="Search Jobs" style="border-radius: 0; -webkit-border-radius: 0; -moz-border-radius: 0; padding: 0;" type="button" />
                        <a href="https://careers-progressresidential.icims.com/jobs/intro?hashed=-435712765&mobile=false&width=970&height=500&bga=true&needsRedirect=false&jan1offset=-420&jun1offset=-420" target=" _blank"></a>
                        <!-- inline styling temp fix text padding issue -->
                    </div>
                    <!-- END FERVOR EDIT -->
                </div>

            </div>

        </div>


    </div>
    <div style="clear: both;"></div>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {

            /*   $("#txtSearch").focus(function () {
                   if ($(this).val() == "Search Properties")
                       $(this).val('');
               });
               $("#txtSearch").blur(function () {
                   if ($(this).val() == "")
                       $(this).val('Search Properties');
               }); */

            $('#divZoom').click(function () {
                var searchString = $('#txtSearch').val();
                var url = '<%=Url.Action("Index", "PropertyDetails", new { s = "__id__" })%>';
                window.location.href = url.replace('__id__', searchString);
            });

            $('#btnSearchJob').click(function () {
                window.open('https://careers-progressresidential.icims.com', '_blank');
            });
        });
    </script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
