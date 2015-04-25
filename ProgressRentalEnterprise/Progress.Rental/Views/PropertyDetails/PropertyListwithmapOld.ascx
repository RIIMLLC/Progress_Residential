<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Progress.Rental.Model.Properties>>" %>
<div class="col-xs-12 col-sm-6 col-md-7 col-lg-7">


    <div class="row1" style="min-height: 1300px; max-height: 1400px; overflow-y: scroll;">
        <style>
            .DefaultImage {
                background-image: url("../../Images/DefaultImage.jpg");
                background-repeat: no-repeat;
                background-position: 50% 50%;
            }
        </style>

        <h3 class="ftypeca fsize18 fbold opa8" style="text-align: right; margin-right: 10px;">
            <%if (ViewBag.Total != null)
              { %>
            <%: ViewBag.Total %> Homes Found
            <%} %>
            <%else
              { %>
                0 Homes Found
            <%} %>
        </h3>


        <% if (Model != null) %>
        <%{ %>
        <% foreach (var item in Model)
           { %>

        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 s-menu-item" style="margin-top: 20px;">
            <a href="Property?p= <%= Html.Encode(item.PropertyId) %>&k=<%= Html.Encode(item.Street) %> ">
                <div class="span3 property-item property-for-sale">
                    <div class="info-1">
                        <div class="price fbold fsize20">
                            $<%= Html.Encode(item.MarketRent) %>
                        </div>
                    </div>
                    <img src="<%= Html.Encode(item.ImagePath) %>" class="img-hover DefaultImage">

                    <div class="info">
                        <div class="features ftypeca fsize18 fbold opa8">
                            <% if (Html.Encode(item.Beds) != null) %>
                            <%{ %>
                            <span class="area"><%= Html.Encode(item.Beds) %> BR / <%= Html.Encode(item.Baths) %> BA</span>
                            <span class="bath"><%= Html.Encode(item.City) %>, <%= Html.Encode(item.States) %></span>
                            <%} %>
                            <%else %>
                            <%{ %>
                            <span class="area">0 BR / 0 BA</span>
                            <span class="bath"><%= Html.Encode(item.City) %>, <%= Html.Encode(item.States) %></span>
                            <%} %>
                        </div>
                    </div>
                </div>
            </a>
        </div>
        <% } %>
        <%} %>
    </div>
</div>

<div class="col-xs-12 col-sm-6 col-md-5 col-lg-5" style="margin-top: 10px;">
    <style>
        .map {
            width: 100%;
            height: 600px;
            position: relative;
        }
    </style>
    <div id="map-tooltip" class="map"></div>
    <script src='https://api.tiles.mapbox.com/mapbox.js/v2.1.6/mapbox.js'></script>
    <link href='https://api.tiles.mapbox.com/mapbox.js/v2.1.6/mapbox.css' rel='stylesheet' />

    <script type="text/javascript">
        propertylat = 0;
        propertylong = 0;

        var geojsonfinal = [];

        <% if (Model != null) %>
        <%{ %>
        <% foreach (var item in Model)%>
        <% { %>
              <% if (Convert.ToDecimal(item.Lng) != 0 && Convert.ToDecimal(item.Lat) != 0)
                 { %>
        var propaddr = "<%= Html.Encode(item.Street) %>";
        var geojson = [
            {
                "type": "Feature",
                "geometry": {
                    "type": "Point",
                    "coordinates": ["<%= Html.Encode(item.Lng) %>", "<%= Html.Encode(item.Lat) %>"]
                },
                "properties": {
                    "image": "<%= Html.Encode(item.ImagePath) %>",
                    "url2": "Property?p= <%= Html.Encode(item.PropertyId) %>&k=<%= Html.Encode(item.Street) %> ",
                    "title": "<%= Html.Encode(item.Street) %>",
                    "description": "<%= Html.Encode(item.Beds) %> BR / <%= Html.Encode(item.Baths) %> BA <br>$<%= Html.Encode(item.MarketRent) %>",
                    "marker-color": "#79d114",
                    "marker-size": "large",
                    "city": "<%= Html.Encode(item.Street) %>",
                    "marker-symbol": "building"
                }
            },
        ];
            geojsonfinal = geojsonfinal.concat(geojson);
        <% } %>
        <% } %>
        <%} %>
        L.mapbox.accessToken = 'pk.eyJ1IjoicHJhZG1pbiIsImEiOiJHWUR0ZFo0In0.GNJkfFg3FpXBpWjcV0WcEA';
        var mapTooltips = L.mapbox.map('map-tooltip', 'mapbox.streets', { zoomControl: false })
        .setView(["<%: ViewBag.LatiValue %>", "<%: ViewBag.LonValue %>"], 8);

        var myLayer = L.mapbox.featureLayer().addTo(mapTooltips);
        myLayer.setGeoJSON(geojsonfinal);
        myLayer.on('mouseover', function (e) {
            e.layer.openPopup();
        });
        //myLayer.on('mouseout', function (e) {
        //    e.layer.closePopup();
        //});

        myLayer.on('layeradd', function (e) {
            var marker = e.layer,
                feature = marker.feature;
            
            // Create custom popup content
            var popupContent = '<a class="popup" href="' + feature.properties.url2 + '">' +
                                    '<img onerror="imageError(this)" src="' + feature.properties.image + '" width="290" height="200" />' +
                                    feature.properties.city + '<br/>' + feature.properties.description +
                                '</a>';


            marker.bindPopup(popupContent, {
                closeButton: false,
                
               
            });
        });
        myLayer.setGeoJSON(geojsonfinal);
        mapTooltips.dragging.disable();
        mapTooltips.touchZoom.disable();
        mapTooltips.doubleClickZoom.disable();
        mapTooltips.scrollWheelZoom.disable();
        mapTooltips.boxZoom.disable();
    </script>
    <script src='https://api.tiles.mapbox.com/mapbox.js/plugins/leaflet-zoomslider/v0.7.0/L.Control.Zoomslider.js'></script>
    <link href='https://api.tiles.mapbox.com/mapbox.js/plugins/leaflet-zoomslider/v0.7.0/L.Control.Zoomslider.css' rel='stylesheet' />
    <script src="../../Scripts/js/Zoomslider.js"></script>
    <link href="../../Content/css/Zoomslider.css" rel='stylesheet' />
    <ul style="z-index: 3; top: 0px; left: 0px; display: none;" aria-activedescendant="ui-active-menuitem" role="listbox" class="ui-autocomplete ui-menu ui-widget ui-widget-content ui-corner-all"></ul>
    <script>
        function imageError(element) {
            element.onerror = '';
            element.src = '/Images/DefaultImage.jpg';
        }
    </script>
</div>
