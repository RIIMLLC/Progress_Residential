<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/ProgressMain.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <style>
        .DefaultImage {
            background-image: url("../Images/SiteImages/DefaultImage.png");
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
                        
<!-- FERVOR EDIT - UPDATED LOGO file and added alt tag -->
                            <img src="../../Images/SiteImages/logo-01.png" class="img-responsive" alt="Progress Residential Logo" />
                        </a>
                    </div>
                
                    <div id="navmain" class="">
                        <div class="pull-left"></div>

                        <div class="transparent">
                            <ul class="nav navbar-nav pull-right" style="padding-right: 80px;">
                                <li><a href="https://rentprogress.securecafe.com/residentservices/apartmentsforrent/userlogin.aspx" target="_blank">Log In</a></li>
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
            <!-- end nav bar -->


            <div class="container searchHeaderFixed">
                <div class="row" style="margin:auto 0px;">
<!--
REMOVE THIS DIV
                    <div class="col-3">
                    </div>
-->
                    <div class="col-7 center-block">
                        <div class="headw">Find <i>your</i> perfect home</div>
                        <form novalidate role="form" action="PropertyDetails/" method="get">
                            <div>
                            
<!-- REMOVED INVALID BACKGROUND STYLE, AND ADDED TO CSS  -->                           
                                <div class="Searchtext ">
                                    
                                    <input id="s" name="s" placeholder="<%: (string)ViewBag.city %>" id="s" name="s" value="<%: (string)ViewBag.city %>" type="text" style="padding:1.60%; color:#FFF;">
                                    <input class="searchButton input-group-addon btn btn-green ftypeca fbold fsize18 bbord tboxh60" value="Search" type="submit">

                                </div>

                                <div>
                                      <% if (ViewBag.List != null)%>
                                    <%{ %>
                                    <ul>
                                        <%foreach (var list in ViewBag.List) %>
                                        <%{ %>
                                        <li>"<%=Html.Encode(list) %>"
                                        </li>
                                        <%} %>
                                    </ul>
                                    <%} %>
                                </div>
                            </div>
                        </form>

                    </div>
<!--
REMOVE THIS DIV
                    <div class="col-3">
                    </div>
-->
                </div>
            </div>

        </div>
    </div>

    <div class="home-wrapper">
        <div class="home-content">
            
            <h2 class="osLight">Featured Homes for Rent</h2>
            <h3 class="osLight">A curated selection of homes in your area</h3>
            <br>
        </div>
    </div>

    <div id="idslider">
        <div class="container">            
            <div class="thumbnails row" style="margin:auto 0px;">            
            	<!-- ADD .fader DIV as mask -->
                <div class="fader left"></div>
                <div class="fader"></div>
                <div id="ca-container" class="ca-container">
				<div class="ca-wrapper">
                     <% if (Model != null && Model.Count > 0) %>
                <%{ %>
                <% for (int i = 0; i < Model.Count; i++)
                   { %>	
					<div class="ca-item ca-item-1">
						<div class="ca-item-main">							
                            <div class="sl">    
			                    <a href="PropertyDetails/Property?p= <%= Html.Encode(Model[i].PropertyId) %>&k=<%= Html.Encode(Model[i].Street) %> &r=<%= Html.Encode("fe") %>">
			                        <div class="thumbnail">
			                            <object data="<%= Html.Encode(Model[i].ImagePath)%>" type="image/png">
			                                <img src="../../Images/SiteImages/DefaultImage.jpg" class="img-responsive DefaultImage">
			                            </object>		
			
			                            <div class="label label-success price" style="background-color:#79d214;">
			                                 $<%= Html.Encode(Model[i].MarketRent) %>
			                            </div>
			
			                            <div class="caption">
			                            
<!-- MUST ADD .clearfix to .propertybottom DIV   -->
			                                <div class=" propertybottom clearfix">
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

                <div class="col-1"></div>
            </div>
        </div>        
    </div>


    <div id="hero-container3">
    
    	
<!-- FERVOR EDIT - Remove img, and ADD div -->
        <!-- <img src="images/banner.png" style="width: 100%;"> -->
        
        <div class="community">
	        <div class="inner">
	        	<h2>Your Home. Your Community</h2>
	        	<p>Over 80% of our homes are in master-planned communities, and we pay the fees so you can enjoy all the amenities with none of the headaches. Come home to Progress Residential.</p>
	        </div>
        </div>
        
    </div>
    <br><br><br><br>
    <div class="home-wrapper">
        <div class="home-content">
            <h2 class="osLight fcolora fbold fsize36">Your Experience is Our Priority</h2>
            <h3 class="osLight fbold fsize16 opa8">We judge ourselves by our residents' experiences</h3>
            <br><br><br><br>
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
                                
<!-- FERVOR EDIT  - Remove inline style. Added new testimonial copy -->
                                    <div class="home-testim-text fsize20 ">
                                        "
                                        <br>
                                       My Leasing Specialist, Diane, was amazing! Within minutes of my realtor contacting her, I had an application. I sent it to Diane that day, and in less than 24 hours, I was approved.
									   <br>
									   When I went to my walk-through, two representatives were waiting in the doorway. They took the time to show me around and answer every question. Thanks to Progress Residential, I am living in my dream home!
                                    </div>

                                    <div class="home-testim-name ftypeca fsize14 fbold " style="padding-left: 55px;">
                                        <br>
                                        DAWN COONS
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

<!-- FERVOR EDIT  - Remove inline style. Added new testimonial copy -->                               
                                    <div class="home-testim-text fsize20 ">
                                        "
                                        <br>
                                       I love my job! It’s not only matching customers with the right homes, but also helping them navigate their way through a smooth leasing process. Dawn knew what she wanted in a home, and she was such a pleasure to assist. I’m glad I was part of the team that helped make her feel at home with Progress Residential.

                                    </div>
                                    <div style="padding-left: 55px;" class="home-testim-name ftypeca fsize14 fbold ">
                                        <br>
                                       DIANE AUSTIN, LEASING SPECIALIST
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="hero-container2" style="background-color: #fff;">

<!-- FERVOR EDIT  - Remove .pb40  -->     
        <div class="row" style="margin:auto 0px;">
        
<!-- FERVOR EDIT  - Remove <br>s  -->         
<!--
            <br>
            <br>
-->

<!-- FERVOR EDIT  - add clearfix to .search-panel2  -->  
            <div class="search-panel2 clearfix">

                  <form novalidate class="form-inline" role="form" action="PropertyDetails/" method="get">
                   
                    
                       <div class="box_upcoming">
	                        <div class="form-group fsize20">
	                        Find <i>your</i> perfect home&nbsp;&nbsp;
	                    </div>
                    
                    <div class="form-group">
                        <div class="input-group">
                        
<!-- FERVOR EDIT  - Remove inline style  -->                          
                            <input class="searchTextbox form-control marr ftypeca fbold fcolorBlack fsize16" id="citys" name="s" placeholder="Location" value="<%: (string)ViewBag.city %>" type="text">

                        </div>
                    </div>
                             <% if (ViewBag.List != null)%>
                            <%{ %>
                            <ul>
                                <%foreach (var list in ViewBag.List) %>
                                <%{ %>
                                <li>"<%=Html.Encode(list) %>"
                                </li>
                                <%} %>
                            </ul>
                            <%} %>

                    <div class="form-group">

                        <input class="searchButton btn btn-green marl ftypeca fbold fsize14 bbord tboxw120" value="Search" type="submit">

                    </div></div>
                    
                    
                    
                </form>
            </div>

        </div>
    </div>









</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">

   <script>
     

     

    </script>

    <link href="../../Content/cssOther/bootstrap.css" rel="stylesheet">
    <link href="../../Content/cssOther/styles.css" rel="stylesheet">
    <script src="../../Scripts/jsOther/bootstrap_002.js"></script>

    <script src="js/epw6hwg.js"></script>
    <script>try { Typekit.load(); } catch (e) { }</script>



    
    <script type="text/javascript">
        $(document).ready(function () {
            $('#s').autocomplete({
                source: '<%:Url.Action("AutocompleteAddress")%>'
            });

            $('#city').autocomplete({
                source: '<%:Url.Action("AutocompleteAddress")%>'
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


<ul style="z-index: 1; top: 0px; left: 0px; display: none;" aria-activedescendant="ui-active-menuitem" role="listbox" class="ui-autocomplete ui-menu ui-widget ui-widget-content ui-corner-all"></ul>



</asp:Content>
