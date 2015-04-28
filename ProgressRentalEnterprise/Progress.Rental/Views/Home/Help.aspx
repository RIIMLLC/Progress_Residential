<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ProgressMain.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Help
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <link href="../../Content/cssOther/fervor-contact.css" rel="stylesheet" />
    <!-- Header -->
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
                <form novalidate class="my_form-inline" role="form" action="LoadPropertes" method="get">
                    <div class="form-group form-group1">
                        <div class="input-group" style="width: 350px; margin: auto;">
                            <!--<a class="input-group-addon">
                                    <i class="fa fa-search"></i>
                                </a>
                                <input class="form-control abt fcolorBlack " style="border-color:black" id="Text1" type="text" width="350">-->
                            <div class="searchfield" style="background-color: #fff;">
                                <div class="zooom" id="divZoom">
                                    <input type="submit" style="border: none; color: transparent; background-color: transparent; height: 27px; width: 24px; margin-top: -16px;" value="" />
                                </div>
                                <input id="txtSearch" value="City, State" onfocus="this.value = this.value=='City, State'?' ':this.value;"
                                    onblur="this.value = this.value==' '?'City, State':this.value;" name="txtSearch" type="text" class="seearch input" style="color: #000 !important">
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

                                <a href="../Documents/15PR007-Screening-and-Application_v7_f-web.pdf" target="_blank">Apply</a>

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

    <!--drop down Menu part-->
    <div class="my_home-footer1" style="height: 160px; text-align: center;">
        <!--<div  style="padding-top:40px; padding-bottom:40px; flex-align:center; margin-left:40%; margin-right:40%;">-->
        <div class="home-wrapper ftypeca fbold">
        </div>
    </div>
    <!-- Content -->


    <div class="home-wrapper">
        <div class="help_bar">Get Started</div>
        <div class="help_cntnt">
            <div class="left_sidebx">
                <!-- FERVOR EDIT - changed/added content -->

                <p>
                    Please refer to the following document for detailed information on setting up your<a style="color: #428bca !important;" href="../Documents/Resident_Help.pdf" target="_blank"> Resident Services Account and making payments online</a>.<br>

                    <br>
                    <b>If you have questions or need assistance</b>:
                </p>
               

                <br>
                <p>
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
        <div style="clear: both;"></div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
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

            $('#divZoom').click(function () {
                var searchString = $('#txtSearch').val();
               
                //if (searchString == "City, State" || searchString == " " || searchString == "") {
                //    // e.preventDefault();
                //}
                //else {
                var url = '<%=Url.Action("Index", "PropertyDetails", new { s = "__id__" })%>';
                window.location.href = url.replace('__id__', searchString);
                //}
            });

            $('#txtSearch').autocomplete({
                source: '<%:Url.Action("AutocompleteAddress")%>'
            });

        });
    </script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
