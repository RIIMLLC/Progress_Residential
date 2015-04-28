<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ProgressMain.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Progress Residential
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .map {
            width: 100%;
            height: 1200px;
            position: relative;
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
                    <!--
FERVOR EDIT - Added .alt class to .navbar-brand or to the body tag to designate difference between Homepage and all other templates                    
-->
                    <a class="navbar-brand alt" href="../Home">
                        <img src="../../images/SiteImages/color_logo1.png" class="img-responsive"></a>
                </div>
                <form novalidate class="form-inline" role="form" method="get" action="../PropertyDetails">
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
                                <input name="s" id="s" type="text" value="<%=ViewBag.Message %>" class="seearch input" style="color: #000 !important">
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

                                <a href="../Documents/Rental Qualification Criteria & Lease Administration (2015-04-28) - Fillable, FINAL.pdf" target="_blank">Apply</a>

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

    <div class="clearfix"></div>

    <nav class="navbar navbar-default">
        <div class="container-fluid">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>

            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li class="dropdown rbord">
                        <select id="selMinRent" name="selMinRent">
                            <option>Min Rent</option>
                            <option value="0" style="color: black"><$1,000 Min</option>
                            <option value="1000" style="color: black">$1,000 Min</option>
                            <option value="1500" style="color: black">$1,500 Min</option>
                            <option value="2000" style="color: black">$2,000 Min</option>
                            <option value="2500" style="color: black">$2,500 Min</option>
                            <option value="3001" style="color: black">$3,000+ Min</option>
                        </select>
                    </li>
                    <li class="dropdown rbord">
                        <select id="selMaxRent" name="selMaxRent">
                            <option>Max Rent</option>
                            <option value="999" style="color: black"><$1,000 Max</option>
                            <option value="1000" style="color: black">$1,000 Max</option>
                            <option value="1500" style="color: black">$1,500 Max</option>
                            <option value="2000" style="color: black">$2,000 Max</option>
                            <option value="2500" style="color: black">$2,500 Max</option>
                            <option value="3001" style="color: black">$3,000+ Max</option>
                        </select>
                    </li>
                    <li class="dropdown rbord">
                        <select id="selBed" name="selBed">
                            <option>Bedrooms</option>

                            <% if (ViewBag.bed != null)
                               { %>
                            <% foreach (var item in ViewBag.bed)
                               { %>
                            <option value="<%=Html.Encode(item.NoBedRooms) %>"><%=Html.Encode(item.NoBedRooms) %> Bedrooms </option>

                            <% } %>
                            <% } %>
                        </select>
                    </li>
                    <li class="dropdown rbord">
                        <select id="selBath" name="selBath">
                            <option>Bathrooms</option>
                            <% if (ViewBag.bath != null)
                               { %>
                            <% foreach (var item in ViewBag.bath)
                               { %>
                            <option value="<%= Html.Encode(item.NoBathRooms) %>"><%= Html.Encode(item.NoBathRooms) %> Bathrooms </option>
                            <% } %>
                            <% } %>
                        </select>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container-fluid -->
    </nav>

    <div id="hero-container2" style="min-height: 1300px;">
        <div id="dvPropertyLst">
            <!--<div class="col-xs-12 col-sm-6 col-md-7 col-lg-7" id="dvPropertyLst">-->
            <%Html.RenderPartial("PropertyList"); %>
            <!-- FERVOR EDIT - remove max-height, to match map height         -->
        </div>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="js/ProgressRentalv1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#selBed').change(function () {
                FilterProperties();
            });

            $('#selBath').change(function () {
                FilterProperties();
            });

            $('#selMinRent').change(function () {
                FilterProperties();
            });

            $('#selMaxRent').change(function () {
                FilterProperties();
            });

            $("#s").focus(function () {
                if ($(this).val() == "City, State")
                    $(this).val('');
            });
            $("#s").blur(function () {
                if ($(this).val() == "")
                    $(this).val('City, State');
            });

            //$("#s").focus(function () {
            //    if ($(this).val() == "City, State")
            //        $(this).val('');
            //});
            //$("#s").blur(function () {
            //    if ($(this).val() == "")
            //        $(this).val('City, State');
            //});

            //$("form").submit(function (e) {
            //    var text_1 = document.getElementById('s').value
            //    if (text_1 == "City, State" || text_1 == "") {
            //        alert("Please Enter City and State");
            //        e.preventDefault();
            //    }
            //});

        });

        function FilterProperties() {
            var bed = $('#selBed').find('option:selected').val();
            var bath = $('#selBath').find('option:selected').val();

            var min = $('#selMinRent').find('option:selected').val();
            var max = $('#selMaxRent').find('option:selected').val();

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
    <script>
        function imageError(element) {
            element.onerror = '';
            element.src = '/Images/SiteImages/DefaultImage.png';
        }
    </script>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">

    <script src="js/mapbox.js"></script>
    <link href="css/mapbox_002.css" rel="stylesheet">

    <script type="text/javascript" src="js/js"></script>
    <script src="js/main.js"></script>



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
    <script src="js/L.js"></script>
    <link href="css/L.css" rel="stylesheet">
    <ul style="z-index: 3; top: 0px; left: 0px; display: none;" aria-activedescendant="ui-active-menuitem" role="listbox" class="ui-autocomplete ui-menu ui-widget ui-widget-content ui-corner-all"></ul>

</asp:Content>
