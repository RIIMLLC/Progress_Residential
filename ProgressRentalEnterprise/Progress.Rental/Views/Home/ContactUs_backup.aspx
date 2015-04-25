<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ProgressMain.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    ContactUs
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

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
                    <div class="input-group" style="width: 350px; margin: auto;">
                        <div class="searchfield" style="background-color: #fff;">
                            <div class="zooom" id="divZoom">
                                <input type="submit" style="border: none; color: transparent; background-color: transparent; height: 27px; width: 24px; margin-top: -16px;" value="" />
                            </div>
                            <input id="txtSearch" name="txtSearch" type="text" value="Atlanta, GA" class="seearch" style="color: #000 !important">
                        </div>
                        <!--searchfield-->
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
                                <a href="https://rentprogress.securecafe.com/residentservices/apartmentsforrent/userlogin.aspx" target="_blank">Log In</a>
                            </li>
                            <li>
                                <%: Html.ActionLink("Help", "Help", "Home") %>
                            </li>
                        </ul>
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
        <div class="help_bar">Contact Us</div>
        <div class="help_cntnt">
            <div class="left_sidebx">
                <!-- FERVOR EDIT - changed/added content -->

                <p>
                    Please refer to the following document for detailed information on setting up your<a href="Resident_Help.pdf" target="_blank"> Resident Services Account and making payments online</a>.<br>

                    <br>
                    <b>If you have questions or need assistance</b>:
                </p>
                <!--Aashish Changes:: #i have added, href to new Resident_help.pdf , it opens in a new page to do the things.-->

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
    </div>
    <div style="clear: both;"></div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {

            $("#txtSearch").focus(function () {
                if ($(this).val() == "Search Properties")
                    $(this).val('');
            });
            $("#txtSearch").blur(function () {
                if ($(this).val() == "")
                    $(this).val('Search Properties');
            });

            $('#divZoom').click(function () {
                var searchString = $('#txtSearch').val();
                var url = '<%=Url.Action("Index", "PropertyDetails", new { s = "__id__" })%>';
                window.location.href = url.replace('__id__', searchString);
            });

            $('#txtSearch').autocomplete({
                source: '<%:Url.Action("AutocompleteAddress")%>'
            });

        });
    </script>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
