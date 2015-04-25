<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Progress.Rental.Model.Properties>>" %>

<!DOCTYPE html>

<html>
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width" />
    <style>
        .map {
            width: 100%;
            height: 500px;
            position: relative;
        }

        .nopropfound {
            text-align: center;
            margin-top: 230px;
            font-size: 35px;
            font-family: "sofia-pro", sans-serif;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <% if (Model != null && Model.Count() > 0)%>
    <%{%>
    <div id='map-tooltips' class='map'></div>
    <%} %>
    <%else
       { %>
    <div class="nopropfound">
        No Properties Found
    </div>
    <%} %>
</body>

<script src='https://api.tiles.mapbox.com/mapbox.js/v2.1.6/mapbox.js'></script>
<link href='https://api.tiles.mapbox.com/mapbox.js/v2.1.6/mapbox.css' rel='stylesheet' />

<script type="text/javascript">
    propertylat = 0;
    propertylong = 0;

    var geojsonfinal = [];

    <% if (Model != null) %>
    <%{ %>
    <% foreach (var item in Model)
       { %>
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
    var mapTooltips = L.mapbox.map('map-tooltips', 'mapbox.streets-basic', { zoomControl: true })
    .setView(["<%: ViewBag.LatiValue %>", "<%: ViewBag.LonValue %>"], 8);

    var myLayer = L.mapbox.featureLayer().addTo(mapTooltips);

    myLayer.setGeoJSON(geojsonfinal);
    //myLayer.on('mouseover', function (e) {
    //    e.layer.openPopup();
    //});


    myLayer.on('layeradd', function (e) {
        //  mapTooltips.fitBounds(myLayer.getBounds());

        var marker = e.layer,
            feature = marker.feature;
        // Create custom popup content
        var popupContent = '<a class="popup" target="_parent" href="' + feature.properties.url2 + '">' +
                                '<img onerror="imageError(this)" src="' + feature.properties.image + '" width="290" height="200" style="padding-right:10px" />' +
                                feature.properties.city + '<br/>' + feature.properties.description +
                            '</a>';
        marker.bindPopup(popupContent, {
            closeButton: true,
        });
    });

    myLayer.setGeoJSON(geojsonfinal);

    mapTooltips.scrollWheelZoom.enable();

    mapTooltips.openPopup();
    mapTooltips.doubleClickZoom.enable();

</script>
<script>
   
    function imageError(element) {
        element.onerror = '';
        element.src = '/Images/Siteimages/DefaultImage.png';
    }
</script>

</html>
