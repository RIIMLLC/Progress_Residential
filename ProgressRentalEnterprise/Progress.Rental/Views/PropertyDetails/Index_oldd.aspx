<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ProgressMain.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Progress Residential :: <%: ViewBag.Message %>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .map {
            width: 100%;
            height: 1200px;
            position: relative;
        }
    </style>
    <script type="text/javascript">
        $(document).ready(function () {

        });
    </script>
    <style type="text/css">
        .tk-calluna {
            font-family: "calluna",serif;
        }

        .tk-sofia-pro {
            font-family: "sofia-pro",sans-serif;
        }
    </style>
    <link href="jsOther/d" rel="stylesheet">
    <script src="jsOther/common.js" charset="UTF-8" type="text/javascript"></script>
    <script src="jsOther/util.js" charset="UTF-8" type="text/javascript"></script>
    <script src="jsOther/stats.js" charset="UTF-8" type="text/javascript"></script>

    <style type="text/css">
        .tk-calluna {
            font-family: "calluna",serif;
        }

        .tk-sofia-pro {
            font-family: "sofia-pro",sans-serif;
        }
    </style>
    <link href="d.htm" rel="stylesheet">

    <script src="//use.typekit.net/epw6hwg.js"></script>
    <script>try { Typekit.load(); } catch (e) { }</script>
    <script src="//use.typekit.net/epw6hwg.js"></script>
    <script>try { Typekit.load(); } catch (e) { }</script>
    <script src="//use.typekit.net/epw6hwg.js"></script>
    <script>try { Typekit.load(); } catch (e) { }</script>

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
                <form novalidate class="form-inline" role="form" method="get" action="../PropertyDetails">
                    <div class="form-group form-group1">
                        <div class="input-group" style="width: 350px;">
                            <!--<a class="input-group-addon">
                                    <i class="fa fa-search"></i>
                                </a>
                                <input class="form-control abt fcolorBlack " style="border-color:black" id="Text1" type="text" width="350">-->
                            <div class="searchfield">
                                <div class="zooom">
                                    <input type="submit" style="border: none; color: transparent; background-color: transparent; height: 27px; width: 24px; margin-top: -16px;" value="" /></div>
                                <input name="s" id="s" type="text" style="margin-top: 7px !important;" value="<%: ViewBag.Message %>" class="seearch">
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
                                <%: Html.ActionLink("Help", "Help", "Home") %>
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


   <nav class="navbar navbar-default">
            <div class="container-fluid">
                <div class="navbar-header">
                  <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                  </button>
                  
                </div><!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
              <ul class="nav navbar-nav">
                <li class="dropdown rbord">
                    <select id="Select1">
                        <option>Min Rent</option>
                        <option value="999" style="color: black"><$1,000 Min</option>
                        <option value="1000" style="color: black">$1,000 Min</option>
                        <option value="1500" style="color: black">$1,500 Min</option>
                        <option value="2000" style="color: black">$2,000 Min</option>
                        <option value="2500" style="color: black">$2,500 Min</option>
                        <option value="3000" style="color: black">$3,000 Min</option>
                        <option value="3501" style="color: black">$3,500+ Min</option>
                    </select>
                </li>
                <li class="dropdown rbord">
                    <select id="Select2">
                        <option>Max Rent</option>
                        <option value="999" style="color: black"><$1,000 Max</option>
                        <option value="1000" style="color: black">$1,000 Max</option>
                        <option value="1500" style="color: black">$1,500 Max</option>
                        <option value="2000" style="color: black">$2,000 Max</option>
                        <option value="2500" style="color: black">$2,500 Max</option>
                        <option value="3000" style="color: black">$3,000 Max</option>
                        <option value="3501" style="color: black">$3,500+ Max</option>
                    </select>
                </li>
                <li class="dropdown rbord">
                    <select id="Select3">
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
                    <select id="Select4">
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
            </div><!-- /.navbar-collapse -->
          </div><!-- /.container-fluid -->
        </nav>


        

    <div id="hero-container2" style="min-height: 1500px;">
        <div id="dvPropertyLst">
            <%Html.RenderPartial("PropertyList"); %>
        </div>  
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="js/ProgressRentalv1.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#txtMinRent a').on('click', function (e) {
                e.preventDefault();

                // This removes the class on selected li's
                $("#txtMinRent li").removeClass("select");

                // adds 'select' class to the parent li of the clicked element
                // 'this' here refers to the clicked a element
                $(this).closest('li').addClass('select');

                // sets the input field's value to the data value of the clicked a element
                $('#minrent').val($(this).data('value'));

                FilterProperties();
            });

            $('#txtMaxRent a').on('click', function (e) {
                e.preventDefault();

                // This removes the class on selected li's
                $("#txtMaxRent li").removeClass("select");

                // adds 'select' class to the parent li of the clicked element
                // 'this' here refers to the clicked a element
                $(this).closest('li').addClass('select');

                // sets the input field's value to the data value of the clicked a element
                $('#maxrent').val($(this).data('value'));

                FilterProperties();
            });

            $('#selBed a').on('click', function (e) {

                e.preventDefault();

                // This removes the class on selected li's
                $("#selBed li").removeClass("select");

                // adds 'select' class to the parent li of the clicked element
                // 'this' here refers to the clicked a element
                $(this).closest('li').addClass('select');
                //  alert($(this).data('value'));
                // sets the input field's value to the data value of the clicked a element
                $('#bedselect1').val($(this).data('value'));
                //  alert($('#bedselect1').val());
                FilterProperties();
            });

            $('#selBath a').on('click', function (e) {

                e.preventDefault();

                // This removes the class on selected li's
                $("#selBath li").removeClass("select");

                // adds 'select' class to the parent li of the clicked element
                // 'this' here refers to the clicked a element
                $(this).closest('li').addClass('select');

                // sets the input field's value to the data value of the clicked a element
                $('#bathselect').val($(this).data('value'));

                FilterProperties();
            });

            $('#s').autocomplete({
                source: '/PropertyDetails/AutocompleteAddress'
            });

            $("#s").focus(function () {
                if ($(this).val() == "Search Properties")
                    $(this).val('');
            });
            $("#s").blur(function () {
                if ($(this).val() == "")
                    $(this).val('Search Properties');
            });

        });

        function FilterProperties() {
            var min = $('#minrent').val();
            var max = $('#maxrent').val();
            var bath = $('#bathselect').val();
            var bed = $('#bedselect1').val();
            //alert(min);
            // alert(max);

            // alert(bed);
            //alert($('#bedselect1').val());
            //var bed = $('#selBed').find('option:selected').val();
            //var bath = $('#Bath').find('option:selected').val();

            //var min = $('#txtMinRent').val($(this));;
            //var max = $('#txtMaxRent').find('option:selected').val();

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
            element.src = '/Images/DefaultImage.jpg';
        }
    </script>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    
</asp:Content>
