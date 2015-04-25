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
                    <img src="../images/Progress_Residential_Logo_About.png" width="180" /></a>
            </div>
            <form class="form-inline" role="form" action="Index" method="get">
                <div class="form-group form-group1">


                    <div class="input-group" style="width: 300px;">
                        <a class="input-group-addon ">
                            <input type="submit" value="" class="fa fa-search" style="background: url(../images/search_icon.png) no-repeat scroll 0% 70%; width: 30px; height: 26px; border: none; margin-top: -3px;" />
                        </a>
                        <input type="text" name="s" id="s" class="form-control ftypeca opa8 fbold fsize18" value="<%: ViewBag.Message %>" width="350" />
                    </div>
                </div>
            </form>
            <div class="home-nav">
                <a href="https://rentprogress.securecafe.com/residentservices/apartmentsforrent/userlogin.aspx" target="_blank" class="btn ftypeca fbold fsize18 opa6" style="color: black;">Log In</a>
                <a href="../Home/Help" class="btn ftypeca fbold fsize18 opa6" style="color: black;">Help</a>
            </div>
        </div>
    </div>

    <div class="home-footer1" style="height: 50px;">
        <div class="home-wrapper1">
            <div class="row">
                <form id="Form1" class="form-inline ftypeca" runat="server">
                    <div class="form-group rbord lbord">
                        <div class="dropdown padt10">
                            <input type="text" name="txtMinRent" id="txtMinRent" placeholder="Min Rent" />
                        </div>
                        <!-- DropDown -->
                    </div>

                    <div class="form-group rbord">
                        <div class="dropdown padt10">
                            <input type="text" name="txtMaxRent" id="txtMaxRent" placeholder="Max Rent" />
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
                                <option value="<%=Html.Encode(item.NoBedRooms) %>"><%=Html.Encode(item.NoBedRooms) %></option>

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
                                <option><%= Html.Encode(item.NoBathRooms) %></option>
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
    <script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            LoadMap();

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

    function callGeoCoder(addresses, callback) {
        alert("Coming");
        var coords = [];
        for (var i = 0; i < addresses.length; i++) {
            currAddress = addresses[i].address;
            alert(currAddress);
            var geocoder = new google.maps.Geocoder();
            if (geocoder) {
                geocoder.geocode({ 'address': currAddress }, function (results, status) {
                    if (status == google.maps.GeocoderStatus.OK) {
                        var latitudeData = results[0].geometry.location.lat();
                        var longitudeData = results[0].geometry.location.lng();
                        alert(addresses[i].State);
                        alert(addresses[i].Bed);
                        alert(addresses[i].Bath);
                        alert(addresses[i].MarketRent);
                        coords.push({ address: currAddress, State: addresses[i].State, Bed: addresses[i].Bed, Bath: addresses[i].Bath, MarketRent: addresses[i].MarketRent, latitude: latitudeData, longtude: longitudeData });

                        if (coords.length == addresses.length) {
                            if (typeof callback == 'function') {
                                callback(coords);
                            }
                        }
                    }
                    else {
                        throw ('No results found: ' + status);
                    }
                });
            }
        }
    }

    function LoadMap() {
        alert('Getting GEO Details');
        var addresses = [];
        var addressWithGeoLocation = [];

        <% if (Model != null) %>
        <%{ %>
            <% foreach (var item in Model)
               { %>
        addresses.push({ address: '<%= Html.Encode(item.Street) %>', State: '<%= Html.Encode(item.States) %>', Bed: '<%= Html.Encode(item.Beds) %>', Bath: '<%= Html.Encode(item.Baths) %>', MarketRent: '<%= Html.Encode(item.MarketRent) %>' });
             <%
               }
          }
          %>

        callGeoCoder(addresses, function (geoData) {
            if (geoData.length > 0) {
                /*
                L.mapbox.accessToken = 'pk.eyJ1IjoicHJhZG1pbiIsImEiOiJHWUR0ZFo0In0.GNJkfFg3FpXBpWjcV0WcEA';
                var mapTooltips = L.mapbox.map('map-tooltips', 'mapbox.light')
                  .setView([37.8, -96], 4);
                var myLayer = L.mapbox.featureLayer().addTo(mapTooltips);
                */
                var geojson = [];

                for (i = 0; i < geoData.length; i++) {
                    geojson.push({
                        "type": "Feature",
                        "geometry": {
                            "type": "Point",
                            "coordinates": [geoData[i].longtude, geoData[i].latitude]
                        },
                        "properties": {
                            "title": geoData[i].address + ', ' + geoData[i].State,
                            "description": geoData[i].Bed + 'BR /' + geoData[i].Bath + ' BA <br>' + geoData[i].MarketRent,
                            "marker-color": "#3ca0d3",
                            "marker-size": "large",
                            "marker-symbol": "bus"
                        }
                    });
                }

                for (i = 0; i < geojson.length; i++) {
                    //alert(geojson[i].geometry.type);
                    //alert(geojson[i].geometry.coordinates[0]);
                    //alert(geojson[i].geometry.coordinates[1]);

                    alert(geojson[i].properties.title);
                    alert(geojson[i].properties.description);

                }
            }
        });


    }

    </script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <script type="text/javascript">
        L.mapbox.accessToken = 'pk.eyJ1IjoicHJhZG1pbiIsImEiOiJHWUR0ZFo0In0.GNJkfFg3FpXBpWjcV0WcEA';
        var mapTooltips = L.mapbox.map('map-tooltips', 'mapbox.light')
          .setView([37.8, -96], 4);
        var myLayer = L.mapbox.featureLayer().addTo(mapTooltips);
        var xa = "-77.031952";
        var ya = "38.913184";
        var conts = '';

        var geojson = [
            //conts
                <% if (Model != null) %>
                <%{ %>
                <% foreach (var item in Model)
                   { %>
                  {
                      "type": "Feature",
                      "geometry": {
                          "type": "Point",
                          "coordinates": [-77.031952, 38.913184]
                      },
                      "properties": {
                          "title": "<%= Html.Encode(item.Street) %>, <%= Html.Encode(item.States) %>",
                          "description": "<%= Html.Encode(item.Beds) %> BR / <%= Html.Encode(item.Baths) %> BA <br>$<%= Html.Encode(item.MarketRent) %>",
                          "marker-color": "#3ca0d3",
                          "marker-size": "large",
                          "marker-symbol": "bus"
                      }
                  },
            <% } %>
          <%} %>
        ];
        myLayer.setGeoJSON(geojson);
        mapTooltips.scrollWheelZoom.disable();
    </script>
</asp:Content>
