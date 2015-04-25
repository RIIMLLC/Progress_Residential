<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<%@ Import Namespace="System.Collections.Generic" %>
<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Progress Residential :: <%: ViewBag.Message %>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <!-- Header -->

    <div id="hero-container1">
        <div class="home-header1">

            <div class="home-logo">
                <a href="../Home">
                    <img src="../../Images/color_logo.png" width="180" /></a>
            </div>
            <form class="form-inline" role="form" action="Index" method="get">
                <div class="form-group form-group1">
                    <div class="input-group" style="width: 300px;">
                        <a class="input-group-addon ">
                            <input type="submit" value="" class="fa fa-search" style="background: url(../images/search_icon.png) no-repeat scroll 0% 70%; width: 30px; height: 26px; border: none; margin-top: -3px;" />
                        </a>
                        <input type="text" name="s" id="s" class="form-control ftypeca opa8 fbold fcolorBlack fsize18" value="<%: ViewBag.Message %>" width="350" style="margin-top: 0px; height: 40px; border: 1px solid #dfdfdf;" />
                    </div>
                </div>
            </form>

            <ul class="nav navbar-nav pull-right">
                <li>
                    <a href="https://rentprogress.securecafe.com/residentservices/apartmentsforrent/userlogin.aspx" target="_blank">Log In</a>
                </li>
                <li>

                    <%: Html.ActionLink("Help", "Help", "Home") %>
                                   
                </li>


            </ul>
            <%--  <div class="home-nav nav navbar-nav pull-right">
                    <a href="https://rentprogress.securecafe.com/residentservices/apartmentsforrent/userlogin.aspx" target="_blank" class="btn ftypeca fbold fsize18 opa6" style="color: black;">Log In</a>
                    <a href="../Home/Help" class="btn ftypeca fbold fsize18 opa6" style="color: black;">Help</a>
                </div>--%>
        </div>
    </div>

    <div class="home-footer1" style="height: 50px;">
        <div class="home-wrapper1">
            <div class="row">
                <form id="Form1" class="form-inline ftypeca" runat="server">
                    <div class="form-group rbord">
                        <div class="dropdown padt10">

                            <select id="txtMinRent">
                                <option>Min Rent</option>
                                <option value="999" style="color: black"><$1,000 Min</option>
                                <option value="1000" style="color: black">$1,000 Min</option>
                                <option value="1500" style="color: black">$1,500 Min</option>
                                <option value="2000" style="color: black">$2,000 Min</option>
                                <option value="2500" style="color: black">$2,500 Min</option>
                                <option value="3000" style="color: black">$3,000 Min</option>
                                <option value="3501" style="color: black">$3,500+ Min</option>


                            </select>
                        </div>
                    </div>
                    <div class="form-group rbord">

                        <div class="dropdown padt10">

                            <select id="txtMaxRent">
                                <option>Max Rent</option>
                                <option value="999" style="color: black"><$1,000 Max</option>
                                <option value="1000" style="color: black">$1,000 Max</option>
                                <option value="1500" style="color: black">$1,500 Max</option>
                                <option value="2000" style="color: black">$2,000 Max</option>
                                <option value="2500" style="color: black">$2,500 Max</option>
                                <option value="3000" style="color: black">$3,000 Max</option>
                                <option value="3501" style="color: black">$3,500+ Max</option>


                            </select>
                        </div>
                    </div>

                    <div class="form-group rbord">
                        <div class="dropdown padt10">
                            <select id="selBed">
                                <option>Bedrooms</option>

                                <% if (ViewBag.bed != null)
                                   { %>
                                <% foreach (var item in ViewBag.bed)
                                   { %>
                                <option value="<%=Html.Encode(item.NoBedRooms) %>"><%=Html.Encode(item.NoBedRooms) %> Bedrooms </option>

                                <% } %>
                                <% } %>
                            </select>
                        </div>
                    </div>
                    <div class="form-group rbord">
                        <div class="dropdown padt10">
                            <select id="selBath">
                                <option>Bathrooms</option>
                                <% if (ViewBag.bath != null)
                                   { %>
                                <% foreach (var item in ViewBag.bath)
                                   { %>
                                <option value="<%= Html.Encode(item.NoBathRooms) %>"><%= Html.Encode(item.NoBathRooms) %> Bathrooms </option>
                                <% } %>
                                <% } %>
                            </select>
                        </div>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <div id="hero-container2" style="min-height: 1500px;">
        <div class="col-xs-12 col-sm-6 col-md-7 col-lg-7" id="dvPropertyLst">
            <%Html.RenderPartial("PropertyList"); %>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-5 col-lg-5">
            <div id='map-tooltips' class='map'></div>
        </div>
    </div>

    <br />
    <br />
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <script src='../../Scripts/ProgressRentalv1.0.js'></script>
    <%--<script type="text/javascript">
        $(document).ready(function () {


            /*
            $('#selBed').change(function () {
                FilterProperties();
            });

            $('#selBath').change(function () {
                FilterProperties();
            });

            $('#txtMinRent').keydown(function (e) {
                if (e.keyCode == 13) {
                    FilterProperties();
                }
            });

            $('#txtMaxRent').keydown(function (e) {
                if (e.keyCode == 13) {
                    FilterProperties();
                }
            });
            */
            $('#s').autocomplete({
                source: '<%:Url.Action("AutocompleteAddress")%>'
            });



        });

        function FilterProperties() {
            var bed = $('#selBed').find('option:selected').val();
            var bath = $('#selBath').find('option:selected').val();

            var min = $('#txtMinRent').val();
            var max = $('#txtMaxRent').val();
            //Validation
            if (min != null && min != "" && min != 'undefined') {
                if ($.isNumeric(min) == false) {
                    alert("Please enter Min Rent as numeric value");
                    return;
                }
            }

            if (max != null && max != "" && max != 'undefined') {
                if ($.isNumeric(max) == false) {
                    alert("Please enter Max Rent as numeric value");
                    return;
                }
            }

            $.ajax({
                url: '/PropertyDetails/FilterSearch/',
                type: 'POST',
                data: { min: min, max: max, bedroom: bed, bathroom: bath },
                cache: false,
                success: function (data) {
                    $(document.getElementById('dvPropertyLst')).html(data);
                },
                error: function (e) {
                    alert('error');
                }
            });
        }


    </script>--%>
    <script type="text/javascript">
        $(document).ready(function () {
            //FilterProperties();

            $('#selBed').change(function () {
                FilterProperties();
            });

            $('#selBath').change(function () {
                FilterProperties();
            });

            $('#txtMinRent').change(function () {
                FilterProperties();
            });

            $('#txtMaxRent').change(function () {
                FilterProperties();
            });

            $('#s').autocomplete({
                source: '<%:Url.Action("AutocompleteAddress")%>'
            });
        });

        function FilterProperties() {
            var bed = $('#selBed').find('option:selected').val();
            var bath = $('#selBath').find('option:selected').val();

            var min = $('#txtMinRent').find('option:selected').val();
            var max = $('#txtMaxRent').find('option:selected').val();

            $.ajax({
                url: '/PropertyDetails/FilterSearch/',
                type: 'POST',
                data: { min: min, max: max, bedroom: bed, bathroom: bath },
                cache: false,
                success: function (data) {
                    $(document.getElementById('dvPropertyLst')).html(data);
                },
                error: function (e) {
                    alert('error');
                }
            });
        }
    </script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <script src='https://api.tiles.mapbox.com/mapbox.js/v2.1.6/mapbox.js'></script>
    <link href='https://api.tiles.mapbox.com/mapbox.js/v2.1.6/mapbox.css' rel='stylesheet' />
    <!--<script src="../../Scripts/js/mapBoxLocal.js"></script>-->
    <!--<link href="../../Content/css/mapBox.css" rel='stylesheet' />-->
 

    <script type="text/javascript">
        function GetLat(address) {
            var geocoder = new google.maps.Geocoder();

            geocoder.geocode({ 'address': address }, function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {

                    lat = results[0].geometry.location.lat();
                    var longitude = results[0].geometry.location.lng();

                } else {
                    alert("Request failed.")
                }

            });

            return lat;
        };
    </script>

    <script type="text/javascript">
        function GetLat(address) {
            var geocoder = new google.maps.Geocoder();
            geocoder.geocode({ 'address': address }, function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {

                    lat = results[0].geometry.location.lat();
                    var longitude = results[0].geometry.location.lng();

                } else {
                    alert("Request failed.")
                }
            });

            return lat;
        };

        function GetLong(address) {
            var geocoder = new google.maps.Geocoder();
            geocoder.geocode({ 'address': address }, function (results, status) {
                if (status == google.maps.GeocoderStatus.OK) {


                    long = results[0].geometry.location.lng();

                } else {
                    alert("Request failed.")
                }

            });

            return long;
        };
    </script>
    
    <script type="text/javascript">
        propertylat = 0;
        propertylong = 0;

        var geojsonfinal = [];

        <% if (Model != null) %>
        <%{ %>
        <% foreach (var item in Model)
           { %>
              <% if (Convert.ToDecimal(item.Lng) != 0 && Convert.ToDecimal(item.Lat) != 0) { %>
              var propaddr = "<%= Html.Encode(item.Street) %>";
              var geojson = [
                  {
                      "type": "Feature",
                      "geometry": {
                          "type": "Point",
                          "coordinates": ["<%= Html.Encode(item.Lng) %>", "<%= Html.Encode(item.Lat) %>"]
                      },
                      "properties": {
                          "title": "<%= Html.Encode(item.Street) %>, <%= Html.Encode(item.States) %>",
                          "description": "<%= Html.Encode(item.Beds) %> BR / <%= Html.Encode(item.Baths) %> BA <br>$<%= Html.Encode(item.MarketRent) %>",
                          "marker-color": "#79d114",
                          "marker-size": "large",
                          "marker-symbol": "building"
                      }
                    },
                  ];
                  geojsonfinal = geojsonfinal.concat(geojson);
          <% } %>
        <% } %>
        <%} %>
        L.mapbox.accessToken = 'pk.eyJ1IjoicHJhZG1pbiIsImEiOiJHWUR0ZFo0In0.GNJkfFg3FpXBpWjcV0WcEA';
        var mapTooltips = L.mapbox.map('map-tooltips', 'mapbox.streets', { zoomControl: true })
        .setView(["<%: ViewBag.LatiValue %>", "<%: ViewBag.LonValue %>"], 10);
        new L.control.zoom({ position: 'topright' }).addTo(mapTooltips);
        var myLayer = L.mapbox.featureLayer().addTo(mapTooltips);
        myLayer.setGeoJSON(geojsonfinal);
        mapTooltips.scrollWheelZoom.enable();
        mapTooltips.zoomControl.enable();
        mapTooltips.openPopup();
        mapTooltips.doubleClickZoom.enable();
        mapTooltips.getZoom();
    </script>
    <!--<script src='https://api.tiles.mapbox.com/mapbox.js/plugins/leaflet-zoomslider/v0.7.0/L.Control.Zoomslider.js'></script>-->
    <!--<link href='https://api.tiles.mapbox.com/mapbox.js/plugins/leaflet-zoomslider/v0.7.0/L.Control.Zoomslider.css' rel='stylesheet' />-->
    <script src="../../Scripts/js/Zoomslider.js"></script>
    <link href="../../Content/css/Zoomslider.css" rel='stylesheet' />

</asp:Content>
