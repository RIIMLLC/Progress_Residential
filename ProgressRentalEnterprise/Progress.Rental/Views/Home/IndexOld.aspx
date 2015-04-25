<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ProgressMain.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <style>
        .DefaultImage {
            background-image: url("../../../Images/SiteImages/DefaultImage.jpg");
            background-repeat: no-repeat;
            background-position: 50% 50%;
            width: 100%;
            height: 100%;
        }
    </style>

    <div id="hero-container">
        <ul class="cb-slideshow">
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
            <li><span></span></li>
        </ul>

        <div class="container" style="padding-top: 60px;">
            <div class="navbar transparent ">
                <div class="container">

                    <!-- .btn-navbar is used as the toggle for collapsed navbar content -->
                    <button class="navbar-toggle" data-target=".navbar-responsive-collapse" data-toggle="collapse" type="button">
                        
                    </button>

                    <div style="padding-left: 44px;">
                        <a class="navbar-brand" href="#">
                            <img src="../../Images/SiteImages/logo.png" class="img-responsive"></a>
                    </div>



                    <div id="navmain" class="">
                        <div class="pull-left">
                        </div>

                        <div class="transparent">

                            <ul class="nav navbar-nav pull-right" style="padding-right: 80px;">
                                <li>
                                    <a href="#" target="_blank">Log In</a>
                                </li>
                                <li>

                                    <a href="#">Help</a>
                                   
                                </li>


                            </ul>
                            <!-- end nav pull-right -->
                        </div>

                    </div>
                    <!-- end nav-collapse -->

                </div>
            </div>
            <!-- end nav bar -->


            <div class="container searchHeaderFixed">
                <div class="row" style="margin:auto 0px;">
                    <div class="col-3">
                    </div>
                    <div class="col-6">
                        <div class="headw">Find <i>your</i> perfect home</div>
                        <form novalidate role="form" action="PropertyDetails/" method="get">
                            <div>
                                <div class="Searchtext " style="background-image:../../Images/SiteImages/gr_bg.jpg; background-repeat:repeat-x;">
                                    <input placeholder="Scottsdale, AZ" value="" type="text" style="padding:1.60%; color:#FFF;">
                                    <input class="searchButton input-group-addon btn btn-green ftypeca fbold fsize18 bbord tboxh60" value="Search" type="submit">
                                </div>

                                <div>
                                    
                                </div>
                            </div>
                        </form>

                    </div>
                    <div class="col-3">
                    </div>
                </div>
            </div>

        </div>
    </div>

    <div class="home-wrapper">
        <div class="home-content">
            <br>
            <br>
            <br>
            <br>
            <h2 class="osLight">Featured Homes for Rent</h2>
            <h3 class="osLight">A curated selected of homes in your area</h3>
            <br>
        </div>
    </div>
    
     
    <div id="idslider">
        <div class="container">
            <div class="thumbnails row" style="margin:auto 0px;">
                          <div id="ca-container" class="ca-container">
				<div class="ca-wrapper">
					<div class="ca-item ca-item-1">
						<div class="ca-item-main">
                            <div class="sl">
                                <a href="#">
                                    <div class="thumbnail">
                                        <object data="Progress%20Residential_files/1-hero_002.htm" type="image/png">
                                            <img src="../../Images/SiteImages/box1.jpg" class="img-responsive DefaultImage">
                                        </object>


                                        <div class="label label-success price" style="background-color:#79d214;">
                                            $1100
                                        </div>

                                        <div class="caption">
                                            <div class=" propertybottom">
                                                <div class="pull-left">
                                                    <span>3 BR / 2 BA</span>
                                                </div>
                                                <div class="pull-right">
                                                    <span class="bath">Scottsdale, AZ</span>
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
                    
                   <div class="ca-item ca-item-1">
						<div class="ca-item-main">
                            <div class="sl">
                                <a href="#">
                                    <div class="thumbnail">
                                        <object data="Progress%20Residential_files/1-hero_002.htm" type="image/png">
                                            <img src="../../Images/SiteImages/box2.jpg" class="img-responsive DefaultImage">
                                        </object>


                                        <div class="label label-success price" style="background-color:#79d214;">
                                            $1100
                                        </div>

                                        <div class="caption">
                                            <div class=" propertybottom">
                                                <div class="pull-left">
                                                    <span>3 BR / 2 BA</span>
                                                </div>
                                                <div class="pull-right">
                                                    <span class="bath">Scottsdale, AZ</span>
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
                  <div class="ca-item ca-item-1">
						<div class="ca-item-main">
                            <div class="sl">
                                <a href="#">
                                    <div class="thumbnail">
                                        <object data="Progress%20Residential_files/1-hero_002.htm" type="image/png">
                                            <img src="../../Images/SiteImages/box3.jpg" class="img-responsive DefaultImage">
                                        </object>
                                        <div class="label label-success price" style="background-color:#79d214;">
                                            $1100
                                        </div>

                                        <div class="caption">
                                            <div class=" propertybottom">
                                                <div class="pull-left">
                                                    <span>3 BR / 2 BA</span>
                                                </div>
                                                <div class="pull-right">
                                                    <span class="bath">Scottsdale, AZ</span>
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
                    
                    
                     <div class="ca-item ca-item-1">
						<div class="ca-item-main">
							
                            <div class="sl">
                
              

                    <a href="#">
                        <div class="thumbnail">
                            <object data="Progress%20Residential_files/1-hero_002.htm" type="image/png">
                                <img src="../../Images/SiteImages/box2.jpg" class="img-responsive DefaultImage">
                            </object>


                            <div class="label label-success price" style="background-color:#79d214;">
                                $1100
                            </div>

                            <div class="caption">
                                <div class=" propertybottom">
                                    <div class="pull-left">
                                        <span>3 BR / 2 BA</span>
                                    </div>
                                    <div class="pull-right">
                                        <span class="bath">Scottsdale, AZ</span>
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

    <!-- Content -->
    <div id="hero-container3">
        <br>
        <br>
        <img src="../../Images/SiteImages/banner.png" style="width: 100%;">
    </div>
    <br>
    <br>
    <br>
    <br>
    <div class="home-wrapper">
        <div class="home-content">
            <h2 class="osLight fcolora fbold fsize36">Your Experience is Our Priority</h2>
            <h3 class="osLight fbold fsize16 opa8">We judge ourselves by our residents' experiences</h3>
            <br>
            <br>
            <br>
            <br>
            <div class="row pb40" style="margin:auto 0px;">
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    <h3 class="osLight fcolorg fsize12 fbold" style="text-align: left; padding-left: 206px;">OUR RESIDENTS</h3>
                    <div id="home-testimonials" class="carousel slide carousel-wb mb20" data-ride="carousel">
                        <!--<ol class="carousel-indicators">
                        <li data-target="#home-testimonials" data-slide-to="0" class="active"></li>
                        <li data-target="#home-testimonials" data-slide-to="1" class=""></li>
                    </ol>-->
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="../../Images/SiteImages/avatar_1.jpg" class="home-testim-avatar" alt="Jane Smith">
                                <div class="home-testim">
                                    <div class="home-testim-text fsize20 " style="font-family: 'sofia-pro','calluna'; font-weight: bolder; color: black; opacity: 0.6">
                                        "
                                        <br>
                                       Sarah was there for me while I was trying to make the decision to move and lorem ipsum dolor sit amet didum.

                                    </div>

                                    <div class="home-testim-name ftypeca fsize14 fbold " style="padding-left: 55px;">
                                        <br>
                                        SALLY &amp; BRENDA N JENKINS
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6">
                    <h3 class="osLight fcolorg fsize12 fbold" style="text-align: left; padding-left: 206px;">OUR TEAM</h3>
                    <div id="Div1" class="carousel slide carousel-wb mb20" data-ride="carousel">
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="../../Images/SiteImages/avatar_2.jpg" class="home-testim-avatar" alt="Jane Smith">
                                <div class="home-testim">
                                    <div class="home-testim-text fsize20 " style="font-family: 'sofia-pro','calluna'; font-weight: bolder; color: black; opacity: 0.6">
                                        "
                                        <br>
                                       Sally and Brendan needed more than a home, they needed a lorem ipsum dolor sit amet didum.

                                    </div>
                                    <div style="padding-left: 55px;" class="home-testim-name ftypeca fsize14 fbold ">
                                        <br>
                                       SARAH VIRONKIS, CUSTOMER CARE
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <br>
    <br>

    <div id="hero-container2" style="background-color: #fff;">
        <div class="row pb40" style="margin:auto 0px;">
            <br>
            <br>
            <div class="search-panel2">

                  <form novalidate class="form-inline" role="form" action="PropertyDetails/" method="get">
                       <div class="box_upcoming">
                        <div class="form-group fsize20">
                        Find <i>your</i> perfect home&nbsp;&nbsp;
                    </div>
                    
                    <div class="form-group">
                        <div class="input-group">
                            <input class="searchTextbox form-control marr ftypeca fbold fcolorBlack fsize16" id=" " name="" placeholder="Location or School District" value="" style="background-color: white; border-color: black; width: 100%" type="text">
                        </div>
                    </div>
                    <div class="form-group">
                        <input class="searchButton btn btn-green marl ftypeca fbold fsize14 bbord tboxw120" value="Search" type="submit">
                    </div></div>
                </form>
            </div>
        </div>
    </div>

    <script>
        $(function () {
            $('.carousel').carousel({
                interval: 20000
            });
        });

        $("#imgNext").click(
           function () {

               $.ajax({
                   cache: false,
                   type: 'GET',
                   url: '/home/homeindex',
                   data: null,
                   success: OnSuccessCall,
                   error: OnErrorCall
               });


           });

        var OnSuccessCall = function (data) {

            $('#idslider').html(data.valueOf(0))
        };

        var OnErrorCall = function err() { alert("error") };



    </script>

    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.6.2/jquery.min.js"></script>
    <script type="text/javascript" src="js_2/jquery.easing.1.3.js"></script>
    <script type="text/javascript" src="js_2/jquery.contentcarousel.js"></script>
    <script type="text/javascript">
        $('#ca-container').contentcarousel();
	</script>
    <ul style="z-index: 1; top: 0px; left: 0px; display: none;" aria-activedescendant="ui-active-menuitem" role="listbox" class="ui-autocomplete ui-menu ui-widget ui-widget-content ui-corner-all"></ul>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
