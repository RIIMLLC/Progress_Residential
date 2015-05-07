<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ProgressMain.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Log In
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
                            <%-- <li>
                                <a href="https://progress.aptexx.com" target="_blank">Log In</a>
                            </li>--%>
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
        <div class="help_bar">Log In</div>
        <div class="help_cntnt">
            <div class="left_sidebx">
                <!-- FERVOR EDIT - changed/added content -->
                <p>
                    To pay rent or submit a work order for your Progress home, please click on your link below:
                </p>
                <ul>
                    <li>
                        <p><a href="https://rentprogress.securecafe.com/residentservices/apartmentsforrent/userlogin.aspx" target="_blank">Atlanta, GA area</a></p>
                    </li>
                    <li>
                        <p><a href="https://progress.aptexx.com/" target="_blank">Dallas, TX area</a></p>
                    </li>
                    <li>
                        <p><a href="https://progress.aptexx.com/" target="_blank">Houston, TX area</a></p>
                    </li>
                    <li>
                        <p><a href="https://progress.aptexx.com/" target="_blank">Las Vegas, NV area</a></p>
                    </li>
                    <li>
                        <p><a href="https://progress.aptexx.com/" target="_blank">Phoenix, AZ area</a></p>
                    </li>
                    <li>
                        <p><a href="https://progress.aptexx.com/" target="_blank">All other areas</a></p>
                    </li>
                </ul>

                <p>
                    <%: Html.ActionLink("Contact Us", "ContactUs", "Home") %> with questions, or refer to the <a href="../../Documents/Resident Services FAQs placeholder.pdf" target="_blank">FAQs</a> for help with your Resident Service Account.
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
</asp:Content>
