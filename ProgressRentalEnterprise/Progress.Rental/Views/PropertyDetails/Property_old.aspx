<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ProgressMain.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Property
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Header -->
    <style>
        .Imgmargin {
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 105px;
            margin-bottom: 0px;
        }

        .DefaultImage {
            background-image: url("../../Images/SiteImages/DefaultImage.jpg");
            background-repeat: no-repeat;
            background-position: 50% 50%;
            width: 100%;
            height: 302px !important;
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
                                <% if (ViewBag.URL != null)%>
                                <%{ %>
                                <input name="s" id="inputGroup" type="text" value="<%: ViewBag.URL %>" class="seearch">
                                <%} %>
                            </div>
                            <!--searchfield-->
                        </div>
                    </div>
                </form>

                <div id="navmain" class="nav-collapse collapse navbar-responsive-collapse">
                    <div class="pull-left">
                    </div>

                    <div class="transparent">

                        <ul class="nav navbar-nav pull-right">
                            <li>
                                <a href="https://rentprogress.securecafe.com/residentservices/apartmentsforrent/userlogin.aspx" target="_blank">Log In</a>
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
        <!--<div class="home-caption">
            <div class="home-title">Now it's easy to find your future home</div>
            <div class="home-subtitle">With Reales - Real Estate HTML Template</div>
            <a href="#" class="btn btn-lg btn-black">Learn More</a>
        </div>-->
        <!--<div class="search-panel1">
            <div class="headw">Find your perfect home</div>
            <form class="form-inline backg" role="form">
                <div class="form-group">
                    <input type="text" class="form-control" id="city" placeholder="Scottsdale, AZ" autocomplete="off">
                </div>


                <div class="form-group">
                    <a href="explore.html" class="btn1 btn-green marl">Search</a>
                   
                </div>
            </form>
        </div>-->
    </div>
    <div id="Div2">
        <div class="search_details_bn" style="text-align: center">
            <% if (ViewBag.Imagepath != null)
               {%>
            <img src="<%: ViewBag.Imagepath %>" onerror="imageError(this)" />
            <%} %>
        </div>

        <%--newly writed div code for image count start--%>

        <div>
            <% if (ViewBag.ImgCount != null)
               {%>
            <%: ViewBag.ImgCount %>
            <%} %>
        </div>

        <%--end--%>
        <%--<div class="home-content" style="margin-top: 590px;">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8 ">
                    <h2 class="fbold" style="text-align: left;"><%: ViewBag.address %></h2>

                    <h4 style="color: #555555; text-align: left; line-height: 32px;">
                        <%if (ViewBag.LongDescription != null)
                          { %>
                        <%: ViewBag.LongDescription %>
                        <%} %>
                        <%else
                          { %>
                           Property Description coming soon.
                        <%} %>

                    </h4>
                    <br />

                    <h3 class="fbold" style="text-align: left;">LOCATION</h3>


                    <br />


                    <div id='map-tooltips' class='map' style="width: 660px; height: 355px;"></div>


                </div>
                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                    <div class="bghelp">
                        <h3 class="fbold" style="text-align: left; font-weight: bolder; padding-top: 15px; padding-bottom: 20px; color: #555555;">$<%: ViewBag.price %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%: ViewBag.beds %> BR / <%: ViewBag.baths %> BA</h3>
                        <hr style="margin: 0;" />
                        <br />
                        <h3 class="  fbold fsize14" style="text-align: left; color: #555555;"><%: ViewBag.address %></h3>
                        <br>
                        <h3 class="  fbold fsize14" style="text-align: left; color: #555555;"><%: ViewBag.sqlft %> Sq Ft</h3>
                        <h3 class="  fbold fsize14" style="text-align: left; color: #555555;">Built in 2004</h3>
                        <a href="https://rentprogress.securecafe.com/onlineleasing/<%:ViewBag.address%>/oleapplication.aspx?stepname=RentalOptions" target="_blank" class=" btn btn-green ftypeca fbold fsize18 bbord" style="width: 250px; height: 45px;">APPLY NOW</a>

                    </div>
                </div>
            </div>
        </div>--%>
    </div>


    <div class="search-result-wrapper">
        <div class="home-content">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8 ">
                    <h2 class="fbold" style="text-align: left;"><%: ViewBag.address %></h2>

                    <h4 style="color: #555555; text-align: left; line-height: 32px;">
                        <%if ((!string.IsNullOrEmpty(ViewBag.LongDescription)))
                          { %>
                        <%: ViewBag.LongDescription %>
                        <%} %>
                        <%else
                          { %>
                           Property Description coming soon.
                        <%} %>

                    </h4>
                    <br />

                    <h3 class="fbold" style="text-align: left;">LOCATION</h3>


                    <br />


                    <div id='map-tooltips' class='map' style="width: 660px; height: 355px;"></div>


                </div>
                <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                    <div class="bghelp">
                        <h3 class="fbold" style="text-align: left; font-weight: bolder; padding-top: 15px; padding-bottom: 20px; color: #555555;">$<%: ViewBag.price %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<%: ViewBag.beds %> BR / <%: ViewBag.baths %> BA</h3>
                        <hr style="margin: 0;" />
                        <br />
                        <h3 class="  fbold fsize14" style="text-align: left; color: #555555;"><%: ViewBag.address %></h3>
                        <br>
                        <h3 class="  fbold fsize14" style="text-align: left; color: #555555;"><%: ViewBag.sqlft %> Sq Ft</h3>
                        <h3 class="  fbold fsize14" style="text-align: left; color: #555555;">Built in 2004</h3>
                        <a href="https://rentprogress.securecafe.com/onlineleasing/<%:ViewBag.address%>/oleapplication.aspx?stepname=RentalOptions" target="_blank" class=" btn btn-green ftypeca fbold fsize18 bbord" style="width: 250px; height: 45px;">APPLY NOW</a>

                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="hero-container2" style="background-color: #343433; height: 80px;">
        <div class="home-header1">
            <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8 ">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a class="fcolor  fbold fsize16 tk-sofia-pro">Amenities & Features</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a class="fcolor  fbold fsize16 tk-sofia-pro">Schools</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a class="fcolor  fbold fsize16 tk-sofia-pro">Neighborhood</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <a class="fcolor  fbold fsize16 tk-sofia-pro">Similar Homes</a>

            </div>
            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                <div class="backg" style="padding: 30px; height: 80px; margin-top: -30px; width: 320px; margin-left: -5px;">
                    <a class="fcolor ftypeca fbold fsize22 ftypeca">$<%: ViewBag.price %> </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a class="fcolor ftypeca fbold fsize22 ftypeca"><%: ViewBag.beds %> BR / <%: ViewBag.baths %> BA</a>
                </div>
            </div>
        </div>
    </div>

    <div class="search-result-wrapper1">
        <div class="home-content">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8" style="background: none repeat scroll 0% 0% #EFEEED;">
                    <h2 class="osLight ftypeca fsize26 fbold" style="text-align: center; color: #3f7b7d; padding-top: 80px;">Amenities  &amp; Features</h2>
                    <div id="divAmenities">
                        <%Html.RenderPartial("Amenities"); %>
                    </div>

                </div>
                <hr style="margin: 0;" />
                <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8">
                    <br />
                    <br />

                    <h2 class="osLight ftypeca fbold fsize32" style="clear: both; color: #3f7b7d;">Nearby Schools</h2>
                    <br>
                    <br>

                    <p style="color: #555555; font-size: 16px; font-weight: bolder; text-align: center">
                        <a id="hrefElementary" href="javascript:LoadSchools('Elementary');">Elementary </a>&nbsp;&nbsp; 
                        <a id="hrefMiddle" href="javascript:LoadSchools('Middle');">Middle School  </a>&nbsp;&nbsp; 
                        <a id="hrefHigh" href="javascript:LoadSchools('High');">High School </a>&nbsp;&nbsp; 
                        <a id="hrefPrivate" href="javascript:LoadSchools('Private');">Private</a>
                        <br>
                        <br>
                    </p>
                    <div id="dvSchoolLst">
                        <%Html.RenderPartial("SchoolList"); %>
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
            <h2 class="osLight fcolora ftypeca fbold fsize36">Similar Homes</h2>
            <br />
        </div>
    </div>

    <div id="idslider">

        <div class="container">





            <div class="thumbnails row" style="margin: auto 0px;">


                <div id="ca-container" class="ca-container">
                    <div class="ca-wrapper">
                        <% if (Model != null && Model.Count > 0) %>
                        <%{ %>
                        <% for (int i = 0; i < Model.Count; i++)
                           { %>
                        <div class="ca-item ca-item-1">
                            <div class="ca-item-main">
                                <div class="sl">
                                    <a href="Property?p= <%= Html.Encode(Model[i].PropertyId) %>&k=<%= Html.Encode(Model[i].Street) %> &r=<%= Html.Encode("fe") %>">
                                        <div class="thumbnail">
                                            <object data="<%= Html.Encode(Model[i].ImagePath)%>" type="image/png" style="width: 308px; height: 302px">
                                                <img src="../../Images/SiteImages/DefaultImage.jpg" class="img-responsive DefaultImage" onerror="imageError(this)">
                                            </object>
                                            <%--   <object data="<%= Html.Encode(Model[i].ImagePath)%>" type="image/png">
                                                <img src="../../Images/DefaultImage.jpg" class="img-responsive DefaultImage" onerror="imageError(this)">
                                            </object>--%>

                                            <div class="label label-success price" style="background-color: #79d214; border-radius: 0px; margin-right: -10px;">
                                                $<%= Html.Encode(Model[i].MarketRent) %>
                                            </div>

                                            <div class="caption">
                                                <div class=" propertybottom">
                                                    <div class="pull-left">
                                                        <span><%= Html.Encode(Model[i].Beds ) %><%--<%= Html.Encode(item.BedRooms) %>--%> BR / <%= Html.Encode(string.Format("{0:0.##}", Model[i].Baths)) %><%--<%= Html.Encode(item.BathRooms) %>--%> BA</span>
                                                    </div>
                                                    <div class="pull-right">
                                                        <span class="bath"><%= Html.Encode(Model[i].City) %><%--<%= Html.Encode(item.City) %>--%>, <%= Html.Encode(Model[i].States) %><%--<%= Html.Encode(item.States) %>--%></span>
                                                    </div>
                                                </div>
                                            </div>
                                            <!-- end caption -->
                                        </div>
                                        <!-- end thumbnail -->
                                    </a>
                                </div>
                            </div>
                        </div>


                        <%}
                          } %>
                    </div>
                </div>

                <!-- end col-3 -->

                <!-- end col-3 -->

                <!-- end col-3 -->

                <div class="col-1">
                </div>

            </div>

        </div>

    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src='../../Scripts/ProgressRentalv1.0.js'></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#s').autocomplete({
                source: '<%:Url.Action("AutocompleteAddress")%>'
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

    <script>

        $("#imgNext").click(
           function () {

               $.ajax({
                   cache: false,
                   type: 'GET',
                   url: '/propertydetails/homeindex',
                   data: null,
                   success: OnSuccessCall,
                   error: OnErrorCall
               });


           });

        var OnSuccessCall = function (data) {

            $('#similarhomes').html(data.valueOf(0))
        };

        var OnErrorCall = function err() { };



    </script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <script src='https://api.tiles.mapbox.com/mapbox.js/v2.1.6/mapbox.js'></script>
    <link href='https://api.tiles.mapbox.com/mapbox.js/v2.1.6/mapbox.css' rel='stylesheet' />
    <script type="text/javascript">

        propertylat = 0;
        propertylong = 0;

        var geojsonfinal = [];
        <% if (ViewBag.LatitudeVal != null && ViewBag.Longtitideval != null)
           {%>
        <% if (ViewBag.PropAddress != null) %>
        <%{ %>

        var propaddr = "<%:ViewBag.address %>";
        var geojson = [
                  {
                      "type": "Feature",
                      "geometry": {
                          "type": "Point",
                          "coordinates": ["<%:ViewBag.Longval %>", "<%: ViewBag.Latval %>"]
                      },
                      "properties": {
                          "title": "<%: ViewBag.address %>",
                          "description": "<%: ViewBag.baths %> BR / <%:ViewBag.beds %> BA <br>$<%:ViewBag.price %>",

                          "marker-color": "#79d114",
                          "marker-size": "large",
                          "marker-symbol": "building"
                      }
                  },
        ];
                  geojsonfinal = geojsonfinal.concat(geojson);

        <%} %>
        <%} %>
        L.mapbox.accessToken = 'pk.eyJ1IjoicHJhZG1pbiIsImEiOiJHWUR0ZFo0In0.GNJkfFg3FpXBpWjcV0WcEA';
        var mapTooltips = L.mapbox.map('map-tooltips', 'mapbox.streets', { zoomControl: false })
        //.setView([33.44, , -112.07], 9);
         //.setView([8.73, 77.70], 9);

           //To add the actual Code

        .setView(["<%: ViewBag.LatitudeVal %>", "<%: ViewBag.Longtitideval %>"], 14);

        mapTooltips.dragging.disable();
        mapTooltips.touchZoom.disable();
        mapTooltips.doubleClickZoom.disable();
        mapTooltips.scrollWheelZoom.disable();
        mapTooltips.boxZoom.disable();
        //new L.control.zoom({ position: 'topright' }).addTo(mapTooltips);

        var myLayer = L.mapbox.featureLayer().addTo(mapTooltips);
        myLayer.setGeoJSON(geojsonfinal);
        myLayer.set



    </script>
    <script>
        $(document).ready(function () {
            $('#slider1').cycle({
                fx: 'fade', //'scrollLeft,scrollDown,scrollRight,scrollUp',blindX, blindY, blindZ, cover, curtainX, curtainY, fade, fadeZoom, growX, growY, none, scrollUp,scrollDown,scrollLeft,scrollRight,scrollHorz,scrollVert,shuffle,slideX,slideY,toss,turnUp,turnDown,turnLeft,turnRight,uncover,ipe ,zoom
                speed: 'slow',
                timeout: 2000
            });
        });
    </script>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    <script type="text/javascript" src="../../Scripts/jsOther/jquery.easing.1.3.js"></script>
    <!-- the jScrollPane script -->

    <script type="text/javascript" src="../../Scripts/jsOther/jquery.contentcarousel.js"></script>
    <script type="text/javascript">
        $('#ca-container').contentcarousel();
    </script>
    <script>

        function imageError(element) {
            element.onerror = '';
            element.src = '/Images/DefaultImage.jpg';
        }

    </script>

</asp:Content>
