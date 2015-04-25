<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Help
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


    <!-- Header -->
    <div id="hero-container1">

        <div class="home-header1">
            <div>
                <a class="navbar-brand" href="../Home" style="margin-left:0px;">
                <img src="../../Images/color_logo.png"  class="img-responsive"/></a>
            </div>

            <div class="home-nav">
                <a href="https://rentprogress.securecafe.com/residentservices/apartmentsforrent/userlogin.aspx" target="_blank" class="btn ftypeca fbold fsize18 opa6" style="color: black;">Log In</a>
                <%-- <a href="Help.html" class="btn ftypeca fbold fsize18 opa6" style="color:black;">Help</a>--%>
                <%: Html.ActionLink("Help", "Help", "Home",new{@class = "btn ftypeca fsize18 fcolor2 fbold" }) %>
            </div>
        </div>

    </div>

    <!--drop down Menu part-->
    <div class="home-footer1" style="height: 160px; text-align: center;">
        <!--<div  style="padding-top:40px; padding-bottom:40px; flex-align:center; margin-left:40%; margin-right:40%;">-->
        <div class="home-wrapper ftypeca fbold" style="padding-left: 300px; padding-top: 50px;">
             <form class="form-inline" role="form" action="LoadPropertes" method="get">
                        <div class="form-group form-group1">
                            <div class="term_serc">
                                <a>
                                    <input type="button" id="btnSearch" value="" class="fa fa-search" style="background: url(../images/search_icon.png) no-repeat scroll 0% 70%; width: 30px; height: 26px; border: none; margin-top: -3px;margin-left:10px;" />
                                </a>
                                <input type="text" id="txtSearch" name="txtSearch" class="form-control abt_serc ftypeca opa8 fbold fcolorBlack fsize18" value="<%: ViewBag.Message %>" style="margin-top: 0px;" />
                            </div>
                        </div>
                    </form>
        </div>
    </div>
    <!-- Content -->


    <div class="home-wrapper">
        <div class="">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8 ">
                    <h2 class="help_head">Help</h2>
                    <br /><br /><br />
                    <h2 class="osLight" style="text-align: left; font-weight: bolder;">Get Started</h2>
                    <br /><br />
                    <h3 class="osLight fsize16 fbold fcolordash" style="text-align: left;opacity: 0.7;">1. Search for your home</h3>

                    <h4 class="osLight  fsize14" style="color: #767674; text-align: left; line-height: 22px;width: 630px;">You can enter city, state, zip from our homepage to see the greatest number of homes that could
potentially meet your needs. 

                    </h4>
                    <br />
                    <br />
                    <h3 class="osLight fsize16 fbold fcolordash" style="text-align: left;opacity: 0.7;">2. Narrow your search for your home </h3>

                    <h4 class="osLight fsize14" style="color: #767674; text-align: left; line-height: 22px;width: 630px;">You can refine your search and hone in on your favorites by selecting from the Options drop down menu. 
                    </h4>
                    <br />
                    <br />
                    <h3 class="osLight fsize16 fbold fcolordash" style="text-align: left;opacity: 0.7;">3. Schedule a tour</h3>

                    <h4 class="osLight fsize14" style="color: #767674; text-align: left; line-height: 22px;width: 630px;">Once you’ve found the home that you like from our website, select “Contact” to schedule an in-person
tour just for you. 

                    </h4>
                    <br />
                    <br />
                    <h3 class="osLight fsize16 fbold fcolordash" style="text-align: left;opacity: 0.7;">4.Submit your application </h3>

                    <h4 class="osLight fsize14" style="color: #767674; text-align: left; line-height: 22px;width: 630px;">After you’ve found your perfect home, select “Apply Now” to start making the home yours. 
                    </h4>
                    <br />
                    <br />
                    <h3 class="osLight fsize16 fbold fcolordash" style="text-align: left;opacity: 0.7;">5.Need help? </h3>

                    <h4 class="osLight fsize14" style="color: #767674; text-align: left; line-height: 22px;width: 630px;">Call us at 888-XXX-XXXX or email us at CustomerCare@RentProgress.com
                    </h4>






                </div>
                
            </div>



        </div>
    </div>


</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#btnSearch').click(function () {
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
