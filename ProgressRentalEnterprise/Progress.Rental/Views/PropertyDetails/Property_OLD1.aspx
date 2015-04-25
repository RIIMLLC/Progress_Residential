<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ProgressMain.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Property
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <style>
        .Imgmargin {
            margin-left: 0px;
            margin-right: 0px;
            margin-top: 105px;
            margin-bottom: 0px;
        }

        .DefaultImage {
            background-image: url("../../Images/SiteImages/DefaultImage.png");
            background-repeat: no-repeat;
            background-position: 50% 50%;
            height: 560px;
            min-width: 100%;
           
            left: 0px;
            top: 0px;
            z-index: 1;
        }

        .smallImage {
            background-image: url("../../Images/SiteImages/DefaultImage.png");
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
    <link href="../../Content/cssOther/fervor-detail.css" rel="stylesheet">
    <!-- Header -->
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
                       <a class="navbar-brand alt" href="#">
                    <img src="images/color_logo1.png" class="img-responsive"></a>
                    </div>
				    <form novalidate class="form-inline" role="form">
                        <div class="form-group form-group1">
                            <div class="input-group" style="width:350px;">
                                <!--<a class="input-group-addon">
                                    <i class="fa fa-search"></i>
                                </a>
                                <input class="form-control abt fcolorBlack " style="border-color:black" id="Text1" type="text" width="350">-->
                                <div class="searchfield">
                                <div class="zooom"></div>
                                <input name="" type="text" value="Location or School District" class="seearch">
                                </div><!--searchfield-->
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
								 <a href="#">Log In</a>
							</li>
							<li>
                                
								  <a href="#">Help</a>
                                   
							</li>
							
							
						</ul>
                            
                            <!-- end nav pull-right -->
                            </div>

					</div><!-- end nav-collapse -->

                </div>
        </div>
    </div>

    <div class="search_details_bn">
    <img src="images/search_details_bn.jpg">
    </div><!--search_details_bn-->
    
    <div id="Div2">
        <div style="display: none"></div>
    </div>

    <div class="search-result-wrapper">
        <div class="home-content">
            <div class="row">
            
<!-- FERVOR EDIT  added .main-detail -->        
                <div class="main-detail col-xs-12 col-sm-6 col-md-8 col-lg-8 ">
                

<!-- FERVOR EDIT - Added placeholder content  -->           
                    <h2>
	                    1750 W Union Hills Dr<br/>
						Phoenix, AZ 85027
                    </h2>

                   
					<p class="intro">LARGER INTRO TEXT. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nec diam velit. Curabitur pellentesque, neque et semper faucibus, nisi lectus volutpat mauris, nec mattis urna est non nibh. Donec ac nisi in ligula maximus pretium.</p>

<!-- FERVOR EDIT  - END placeholder content  --> 

<!-- FERVOR EDIT - Hid Location and School District sections, as they are not part of Phase I  -->  
                    <!--<h3>LOCATION</h3>
					
					
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nec diam velit. Curabitur pellentesque, neque et semper faucibus, nisi lectus volutpat mauris, nec mattis urna est non nibh. Donec ac nisi in ligula maximus pretium.</p>
					
					<h3>School District</h3>
					
					<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Ut nec diam velit. Curabitur pellentesque, neque et semper faucibus, nisi lectus volutpat mauris, nec mattis urna est non nibh. Donec ac nisi in ligula maximus pretium.</p>-->

<!-- END FERVOR EDIT -->

                </div>
                
             
               <div class="detail-sidebar col-xs-12 col-sm-6 col-md-4 col-lg-4"> 
                
		           		<img src="images/26_img.jpg">
			
<!-- FERVOR EDIT  - END placeholder content  -->        
<!-- FERVOR EDIT - fixed spacing/alignment issues in sidebar -->       
                    <div class="bghelp">
                    
                        <h3 class="price">$1,425 <span>4 BR / 2 BA</span></h3>
                        
                        <hr style="margin: 0;">
                        <br>
                        <h3 class="  fbold fsize14" style="text-align: left; color: #555555;">10018 Barbee Drive <br />Charlotte, NC 28269</h3>
                        <h3 class="  fbold fsize14" style="text-align: left; color: #555555;">2140 Sq Ft <br />Built in 2004</h3><br />
                        <a href="#" class=" btn btn-green ftypeca fbold fsize18 bbord" style="width: 100%;">APPLY NOW</a>

						<h3 class="  fbold fsize14" style="text-align: left; color: #555555; margin-top:20px;"><img src="images/ph.png" class="phone-icon">1 - 888 - 878 - 5016</h3>

                    </div>
<!-- END FERVOR EDIT -->
                </div>
                
            </div>
        </div>
    </div>

    <div id="hero-container2" style="background-color: #343433; height: 80px;">
        <div class="home-header2">
            <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8 ">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <a href="#" class="fcolor  fbold fsize16 tk-sofia-pro">Amenities &amp; Features</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <a href="#" class="fcolor  fbold fsize16 tk-sofia-pro">Schools</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <a href="#" class="fcolor  fbold fsize16 tk-sofia-pro">Neighborhood</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
              <a href="#" class="fcolor  fbold fsize16 tk-sofia-pro">Similar Homes</a>

            </div>
            <div class="col-xs-12 col-sm-6 col-md-4 col-lg-4">
                <div class="backg" style="padding: 30px; height: 80px; margin-top: -30px; width: 320px; margin-left: -5px;">
                    <a class="fcolor ftypeca fbold fsize22 ftypeca">$1,425 </a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <a class="fcolor ftypeca fbold fsize22 ftypeca">4 BR / 2 BA</a>
                </div>
            </div>
        </div>
    </div>
<!-- FERVOR EDIT - added classes .ftypeso for setting the font to Sofia-Pro -->   
    <div class="search-result-wrapper1">
        <div class="home-content2">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8" style="background: none repeat scroll 0% 0% #EFEEED;">
                    <h2 class="osLight ftypeso fsize26 fbold" style="text-align: center; color: #3f7b7d; padding-top: 80px;">Amenities  &amp; Features</h2>
                    <div id="divAmenities">
                        
           <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 s-menu-item1">
            <br>
            <br>
            <br>
            <h3 class="osLight ftypeso fbold fsize18" style="text-align: left;">
                <img src="fervor-images/kitchen.png">KITCHEN</h3>

            
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">
               <p><a href="#">Breakfast Bar</a></p>
                 <p>   <a href="#">Dishwasher</a></p>
                  <p>  <a href="#">Kitchen Island</a></p>
                  <p>  <a href="#">Microwave</a></p>
                  <p>  <a href="#">Pantry</a></p>
                   <p> <a href="#">Refrigerator</a></p>
                  <p>  <a href="#">Stainless Steel Appliances</a></p>
                  <p>  <a href="#">Stove/Oven</a></p>

               
               
               
               
             </h4>
            
            <!--<h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Breakfast Bar</h4>-->
            <!--<h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Refrigerator</h4>-->
        </div>

        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 s-menu-item1">
            <br>
            <br>
            <br>
            <h3 class="osLight ftypeso fbold fsize18" style="text-align: left;">
                <img src="fervor-images/living.png">LIVING ROOM</h3>

            
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">
             <p>  <a href="#">Bonus Room</a></p>
                 <p>    <a href="#">Ceiling Fans</a></p>
                <p>     <a href="#">Dining Room</a></p>
               <p>      <a href="#">First Floor Bedroom</a></p>
                <p>     <a href="#">Living Room</a></p>
                <p>     <a href="#">Loft</a></p>
                <p>     <a href="#">Master Walk-In Closet</a></p>
                <p>     <a href="#">Walk-In Closet</a></p>
               
               
               
               
               
            </h4>
            

            <!--
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Bonus Room</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Ceiling Fans</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Dining Room</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">First Floor Bedroom</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Living Room</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Loft</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Master Walk-In Closet</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Walk-In Closet</h4>
            -->
        </div>

        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 s-menu-item1">
            <br>
            <h3 class="osLight ftypeso fbold fsize18" style="text-align: left;">
                <img src="fervor-images/bathroom.png">BATHROOM</h3>
            
            
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">
               
              <p> <a href="#">Dual Sinks </a></p>
              <p> <a href="#">Oversized Tub</a></p>
              <p> <a href="#">Separate Shower</a></p>
                                   
               
               
            </h4>
            

            <!--
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Dual Sinks</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Oversized Tub</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Separate Shower</h4>
            -->
        </div>

        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 s-menu-item1">
            <br>
            <h3 class="osLight ftypeso fbold fsize18" style="text-align: left;">
                <img src="fervor-images/convi.png">CONVENIENCE</h3>
            
            
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">
               
             <p>  <a href="#">Air Conditioning</a></p>
              <p>  <a href="#">Central Heat</a></p>
              <p>  <a href="#">Laundry Room</a></p>
                               
               
            </h4>
            

            <!--
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Air Conditioning</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Central Heat</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Laundry Room</h4>
            -->
        </div>

        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 s-menu-item1" style="clear: left;">
            <br>
            <h3 class="osLight ftypeso fbold fsize18" style="text-align: left;">
                <img src="fervor-images/community.png">COMMUNITY</h3>
            
            
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">
               
             <p>  <a href="#">Pool</a></p>
              <p>   <a href="#">Gym & Spa </a></p>
             <p>    <a href="#">Gated Community</a></p>
             <p>    <a href="#">Walking Trails</a></p>
             <p>    <a href="#">Greenbelts</a></p>
              <p>   <a href="#">Parks</a></p>
               
            </h4>
            

            <!--
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Pool</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Gym & Spa</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Gated Community</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Walking Trails</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Green Belts</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Parks</h4>
            -->
        </div>

        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 s-menu-item1">
            <br>
            <h3 class="osLight ftypeso fbold fsize18" style="text-align: left;">
                <img src="fervor-images/add.png">ADDITIONAL BENEFITS</h3>
            
            
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">
               
             <p>  <a href="#">Open Floor Plan</a></p>
              <p> <a href="#">Tile Floors</a></p>
               
               
               
               
            </h4>
            

            <!--
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Open Floor plan</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Tile Floors</h4>
            -->
        </div>

                    </div>

                </div>
                <hr style="margin: 0;">
                <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8">
                    <br>
                    <br>
<!-- FERVOR EDIT - changed classes on h2 to center it and change font -->
                    <h2 class="osLight ftypeso fsize26 fbold" style="text-align: center; color: #3f7b7d; padding-top: 80px;">Nearby Schools</h2>
<!-- END FERVOR EDIT -->
                    <br>
                    <br>
<!-- FERVOR EDIT added classes .ftypeso and .school-tabs for styling. Changed font size to 18px. -->
                    <p class="ftypeso school-tabs" style="color: #555555; font-size: 18px; font-weight: bolder; text-align: center">
<!-- END FERVOR EDIT -->	                    
                        <a id="hrefElementary" href="javascript:LoadSchools('Elementary');">Elementary </a> 
                        <a id="hrefMiddle" href="javascript:LoadSchools('Middle');">Middle School  </a>
                        <a id="hrefHigh" href="javascript:LoadSchools('High');">High School </a>
                        <a id="hrefPrivate" href="javascript:LoadSchools('Private');">Private</a>
                        <br>
                        <br>
                    </p>
                  <div id="dvSchoolLst">
                        
<table class="table table-striped osLight ftypeso fsize14 fbold fcolorash">
<!-- FERVOR EDIT adjusted table sizes -->    
    <tbody><tr>
        <td width="46%">Croft Community Elementary </td>
        <td width="46%">0.92 miles away</td>
        
        <td class="fsize30 fcolor" style="background-color: #F8931D" width="8%">7</td>
        
    </tr>
    
    <tr>
        <td width="46%">David Cox Road Elementary </td>
        <td width="46%">1.61 miles away</td>
        
        <td class="fsize30 fcolor" style="background-color: #FE0000" width="8%">3</td>
        
    </tr>
    
    <tr>
        <td width="46%">Mallard Creek </td>
        <td width="46%">2.67 miles away</td>
        
        <td class="fsize30 fcolor" style="background-color: #F8931D" width="8%">7</td>
        
    </tr>
    
    <tr>
        <td width="46%">Highland Creek Elementary </td>
        <td width="46%">3.12 miles away</td>
        
        <td class="fsize30 fcolor" style="background-color: #3AB54A" width="8%">8</td>
        
    </tr>
    
    <tr>
        <td width="46%">Hornets Nest Elementary </td>
        <td width="46%">3.78 miles away</td>
        
        <td class="fsize30 fcolor" style="background-color: #F8931D;" width="8%">4</td>
        
    </tr>
<!-- END FERVOR EDIT -->	  
</tbody></table>
<br>
                    <br>
                    <div id="map-tooltips" class="map" style="height: 355px; border:solid 1px #ccc;">
                    
                    
                    <iframe width="100%" height="355" frameborder="0" style="border:0" src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3146435.4418206126!2d-100.21333999734402!3d39.634163915255144!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x54eab584e432360b%3A0x1c3bb99243deb742!2sUnited+States!5e0!3m2!1sen!2sin!4v1427975811139"></iframe>
                    
                    </div>
                    <br>
                    <br>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div class="home-wrapper">
        <div class="home-content">
            <br>
            <h2 class="osLight">Similar Homes</h2>
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
                                <img src="images/box1.jpg" class="img-responsive DefaultImage">
                            </object>


                            <div class="label label-success price" style="background-color:#79d214;">
                                $1,100
                            </div>

                            <div class="caption">
<!-- FERVOR - MUST ADD .clearfix to .propertybottom DIV   -->
			                                <div class=" propertybottom clearfix">
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
                                <img src="images/box2.jpg" class="img-responsive DefaultImage">
                            </object>


                            <div class="label label-success price" style="background-color:#79d214;">
                                $1,100
                            </div>

                            <div class="caption">
                                <!-- MUST ADD .clearfix to .propertybottom DIV   -->
			                    <div class=" propertybottom clearfix">
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
                                <img src="images/box3.jpg" class="img-responsive DefaultImage">
                            </object>


                            <div class="label label-success price" style="background-color:#79d214;">
                                $1,100
                            </div>

                            <div class="caption">
<!-- FERVOR - MUST ADD .clearfix to .propertybottom DIV   -->
			                       <div class=" propertybottom clearfix">
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
                                <img src="images/box2.jpg" class="img-responsive DefaultImage">
                            </object>


                            <div class="label label-success price" style="background-color:#79d214;">
                                $1,100
                            </div>

                            <div class="caption">
<!-- FERVOR - MUST ADD .clearfix to .propertybottom DIV   -->
								<div class=" propertybottom clearfix">
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

    <div id="similarhomes">
        
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
            element.src = '/Images/SiteImages/DefaultImage.png';
        }

    </script>

</asp:Content>
