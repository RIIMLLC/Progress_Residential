<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ProgressMain.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ContactUs
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/cssOther/fervor-contact.css" rel="stylesheet" />
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
                    <!--
FERVOR EDIT - Added .alt class to .navbar-brand or to the body tag to designate difference between Homepage and all other templates                    
-->
                    <a class="navbar-brand alt" href="../Home">
                        <img src="../../images/SiteImages/color_logo1.png" class="img-responsive"></a>
                </div>
                <form novalidate class="my_form-inline" role="form" action="LoadPropertes" method="get">
                    <div class="form-group form-group1">
                        <div class="input-group" style="width: 350px; margin: auto;">
                            <div class="searchfield" style="background-color: #fff;">
                                <div class="zooom" id="divZoom">
                                    <input type="submit" style="border: none; color: transparent; background-color: transparent; height: 27px; width: 24px; margin-top: -16px;" value="" />
                                </div>
                                <input id="txtSearch" value="City, State" onfocus="this.value = this.value=='City, State'?' ':this.value;"
                                    onblur="this.value = this.value==' '?'City, State':this.value;" class="seearch input" name="txtSearch" type="text" class="seearch input" style="color: #000 !important">
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

                                <a href="../Documents/Rental Qualification Criteria & Lease Administration (2015-04-28) - Fillable, FINAL.pdf" target="_blank">Apply</a>

                                <!-- here added another HREF that takes relative path of the file and opens in the new 	tab, make it sure that 	Application.pdf is in the same directory as index.html-->

                            </li>
                            <li><%: Html.ActionLink("Log In", "LogIn", "Home") %></li>
                            <!-- <li><%: Html.ActionLink("Help", "Help", "Home") %></li> -->
                        </ul>
                    </div>
                </div>
                <!-- end nav-collapse -->

            </div>
        </div>
    </div>

    <div class="clearfix"></div>

    <div class="my_home-footer1" style="height: 27px; text-align: center;">
        <!-- END FERVOR EDIT -->
        <!--<div  style="padding-top:40px; padding-bottom:40px; flex-align:center; margin-left:40%; margin-right:40%;">-->
        <div class="home-wrapper ftypeca fbold">
            <!-- FERVOR EDIT - removed search form from contact page -->
            <!-- END FERVOR EDIT -->
        </div>
    </div>

    <div class="home-wrapper contact-wrapper">
        <!-- END FERVOR EDIT -->
        <div class="help_bar">Contact Us</div>
        <div class="help_cntnt">
            <div class="left_sidebx">
                <!-- FERVOR EDIT - changed/added content -->
                <p>
                    Thank you for your interest in Progress Residential. To schedule a showing, please contact us.
	                  <br />
                    <br />
                    <h3 class="contact-header contact-phone">
                        <img src="../Images/SiteImages/phone-icon.png" width="36" height="36" alt="Phone Icon" />
                        &nbsp;1-888-878-5016</h3>
                    <h3 class="contact-header contact-email">
                        <img src="../Images/SiteImages/email-icon.png" width="36" height="36" alt="Email Icon" />
                        &nbsp; <a href="mailto:CustomerCare@RentProgress.com">CustomerCare@RentProgress.com</a></h3>
                </p>
                <!-- END FERVOR EDIT -->
            </div>


        </div>


    </div>

    <div style="clear: both;"></div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {

            //$("form").submit(function (e) {
            //    var text_1 = document.getElementById('txtSearch').value
            //    if (text_1 == "City, State" || text_1 == " " || text_1 == "") {
            //        alert("Please Enter City and State");
            //        e.preventDefault();
            //    }
            //});

            //$("#txtSearch").focus(function () {
            //    if ($(this).val() == "City, State")
            //        $(this).val('');
            //});
            //$("#txtSearch").blur(function () {
            //    if ($(this).val() == "")
            //        $(this).val('City, State');
            //});

        });
    </script>
</asp:Content>
