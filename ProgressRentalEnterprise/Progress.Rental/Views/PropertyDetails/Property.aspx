<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ProgressMain.Master" Inherits="System.Web.Mvc.ViewPage<Progress.Rental.Model.PropertyViewModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Property
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

   
    <link href="../../Content/cssOther/fervor-detail.css" rel="stylesheet" />
    <!-- Header -->

    <style>
        .Imgmargin {
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 105px;
            margin-bottom: 0px;
        }

        .DefaultImage {
            background-image: url("../Images/SiteImages/DefaultImage.png");
            background-repeat: no-repeat;
            background-position: 50% 50%;
            width: 100%;
            height: 302px !important;
            left: 0px;
            top: 0px;
            z-index: 1;
        }

        .DefaultImage2 {
            background-image: url("../../Images/SiteImages/DefaultImage.png");
            background-repeat: no-repeat;
            background-position: 50% 50%;
            width: 100%;
            height: auto;
            left: 0px;
            top: 0px;
            z-index: 1;
        }

        .smallImage {
            background-image: url("../../Images/SiteImages/DefaultImage.jpg");
            background-repeat: no-repeat;
            background-position: 50% 50%;
            float: right;
            width: 322px;
            height: 215px;
            margin-right: 121px;
            margin-top: -155px;
            position: absolute;
            left: 820px;
            top: 550px;
            z-index: 2;
        }

        .slider {
            margin: 0 auto;
            /*width: 625px;
            height: 345px;
            border: 8px solid #FFFFFF;
            border-radius: 5px;*/
            box-shadow: 2px 2px 4px #333333;
        }

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
                <form novalidate class="form-inline" role="form" action="../PropertyDetails">
                    <div class="form-group form-group1">
                        <div class="input-group" style="width: 350px;">
                            <!--<a class="input-group-addon">
                                    <i class="fa fa-search"></i>
                                </a>
                                <input class="form-control abt fcolorBlack " style="border-color:black" id="Text1" type="text" width="350">-->
                            <div class="searchfield">
                                <div class="zooom">
                                    <input type="submit" style="border: none; color: transparent; background-color: transparent; height: 27px; width: 24px; margin-top: -16px;" value="" />
                                </div>
                                <%--removed viewbag.URL by abdul by the assist of vijay raj on--%>
                                <input name="s" id="inputGroup" value="<%=ViewBag.URL %>" type="text" class="seearch input" style="color: #000 !important;">
                            </div>
                            <!--searchfield-->
                        </div>
                    </div>
                </form>

                <div id="navmain" class="nav-collapse collapse navbar-responsive-collapse">
                    <div class="pull-left">
                    </div>

                    <div class="transparent">
                        <!--
FERVOR EDIT - Added .alt class to .navbar-brand or to the body tag to designate difference between Homepage and all other templates                    
-->
                        <ul class="nav navbar-nav alt pull-right">
                            <li>

                                <a href="../Documents/Rental Qualification Criteria & Lease Administration (2015-04-24).pdf" target="_blank">Apply</a>

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
        <!-- end nav-collapse -->

    </div>
    </div>
    </div>

    <div class="clearfix"></div>

    <%if (Model != null)
      { %>
    <% if (Model.Property != null)
       { %>
    <div id="Div2">
        <div class="search_details_bn" style="text-align: center">
         <% if (Model.Property.ImagePath != null)
               {%>
                 <img id="img" src="<%: Model.Property.ImagePath %>" style="height: 550px; width: 1000px;">
            <%} %>            
        </div>
    </div>

    <div class="search-result-wrapper">
        <div class="home-content">
            <div class="row">
                <div class="main-detail col-xs-12 col-sm-6 col-md-8 col-lg-8 ">
                    <h2 style="color: #000000 !important; text-align: left;"><%: Model.Property.Street.ToString() %></h2>

                    <p class="intro">
                        <%if ((!string.IsNullOrEmpty(Model.Property.LongDescription)))
                          { %>
                        <%: Model.Property.LongDescription %>
                        <%} %>
                        <%else
                          { %>
                           Property Description coming soon.
                        <%} %>
                    </p>
                    <br />

                    <h3 class="fbold" style="text-align: left;">LOCATION</h3>
                    <br />
                    <div id='map-tooltips' class='map' style="width: 660px; height: 355px;"></div>
                </div>
                <div class="detail-sidebar col-xs-12 col-sm-6 col-md-4 col-lg-4">
                    <!-- START SMALL IMAGE -->
                    <%--secoundary image removed by abdul by the assist of vijay raj on 14-04_15--%>
                    <!-- END SMALL IMAGE -->

                    <div class="bghelp">
                        <h3 class="price">$<%: Model.Property.MarketRent %> <span><%: Model.Property.Beds %> BR / <%: Model.Property.Baths %> BA</span></h3>
                        <hr style="margin: 0;" />
                        <br />
                        <h3 class="  fbold fsize14" style="text-align: left; color: #555555;"><%: Model.Property.Street %>
                            <br />
                            <%: Model.Property.Sqft %> Sq Ft</h3>
                        <h3 class="  fbold fsize14" style="text-align: left; color: #555555;">Built in 2004</h3>
                        <a href="../Documents/Rental Qualification Criteria & Lease Administration (2015-04-24).pdf" target="_blank" class=" btn btn-green ftypeca fbold fsize18 bbord" style="width: 100%;">APPLY NOW</a>

                        <h3 class="  fbold fsize14" style="text-align: left; color: #555555; margin-top: 20px;">
                            <img src="../../images/ph.png" class="phone-icon">1 - 888 - 878 - 5016</h3>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <%--code was removed by Abdul by the assist of vijay raj on 14_04_15--%>

    
    </div>

    <%} %>

    <!--Display the similar Homes even if the property has no value -->
    <%--similar homes code was removed by abdul by assists of vijay raj on 14-04_15--%>
    <%} %>
    <%else
      { %>
    <div>
        No details found for the selected property
    </div>
    <%} %>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src='https://api.tiles.mapbox.com/mapbox.js/v2.1.6/mapbox.js'></script>
    <link href='https://api.tiles.mapbox.com/mapbox.js/v2.1.6/mapbox.css' rel='stylesheet' />
    <script type="text/javascript" src="../../Scripts/jsOther/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="../../Scripts/jsOther/jquery.contentcarousel.js"></script>
    <script src="../../Scripts/jsOther/ProgressRentalv1.js"></script>

    <script type="text/javascript">
        propertylat = 0;
        propertylong = 0;
        var geojsonfinal = [];
        <% if (Model != null)
           { %>
        <% if (Model.Property != null)
           { %>
        var propaddr = "<%:Model.Property.Street.ToString() %>";
          <% if (!string.IsNullOrEmpty(Model.Property.Lat) && !string.IsNullOrEmpty(Model.Property.Lng))
             { %>
        var geojson = [
                  {
                      "type": "Feature",
                      "geometry": {
                          "type": "Point",
                          "coordinates": ["<%:Model.Property.Lng %>", "<%: Model.Property.Lat %>"]
                      },
                      "properties": {
                          "title": "<%: Model.Property.Street %>",
                          "description": "<%: Model.Property.Beds %> BR / <%:Model.Property.Baths %> BA <br>$<%:Model.Property.MarketRent %>",
                          "marker-color": "#79d114",
                          "marker-size": "large",
                          "marker-symbol": "building"
                      }
                  },
        ];
                  geojsonfinal = geojsonfinal.concat(geojson);
                  L.mapbox.accessToken = 'pk.eyJ1IjoicHJhZG1pbiIsImEiOiJHWUR0ZFo0In0.GNJkfFg3FpXBpWjcV0WcEA';
                  var mapTooltips = L.mapbox.map('map-tooltips', 'mapbox.streets', { zoomControl: false })
                  .setView(["<%: Model.Property.Lat %>", "<%: Model.Property.Lng %>"], 14);

                  mapTooltips.dragging.disable();
                  mapTooltips.touchZoom.disable();
                  mapTooltips.doubleClickZoom.disable();
                  mapTooltips.scrollWheelZoom.disable();
                  mapTooltips.boxZoom.disable();
                  var myLayer = L.mapbox.featureLayer().addTo(mapTooltips);
                  myLayer.setGeoJSON(geojsonfinal);
        <%}%>
        <%}%>
        <%}%>
    </script>

    <script type="text/javascript">
        $('#ca-container').contentcarousel();
    </script>

    <script type="text/javascript">
        $(document).ready(function () {
            $(".img").error(function () {
                $(this).attr('src', '../Images/SiteImages/DefaultImage.png');
            });
        });
        function LoadSchools(selOption) {
            $.ajax({
                url: '/PropertyDetails/SchoolList/',
                type: 'POST',
                data: { searchType: selOption },
                cache: false,
                success: function (data) {
                    $(document.getElementById('dvSchoolLst')).html(data);
                },
                error: function (e) {
                    alert('error');
                }
            });
        }
    </script>
    <script type="text/javascript">
        function imageError(element) {
            element.onerror = '';
            element.src = '../Images/SiteImages/DefaultImage.png';
        }
    </script>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
