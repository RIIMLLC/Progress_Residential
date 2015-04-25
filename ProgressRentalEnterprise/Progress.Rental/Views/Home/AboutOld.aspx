<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    About
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

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

                    <div >
                       <a class="navbar-brand" href="../Home">
                    <img src="../../Images/color_logo.png"  class="img-responsive"/></a>
                    </div>
				    <form class="form-inline" role="form" action="LoadPropertes/" method="get">
                        <div class="form-group form-group1">
                            <div class="abt_serc">
                                <a>
                                    <input type="button" id="btnSearch" class="fa fa-search" style="background: url(../images/search_icon.png) no-repeat scroll 0% 70%; width: 30px; height: 26px; border: none; margin-top: -3px;margin-left:10px;" />
                                </a>
                                <input type="text" id="txtSearch" name="txtSearch" class="form-control abt_serc ftypeca opa8 fbold fcolorBlack fsize18" value="<%: ViewBag.Message %>" style="margin-top: 0px;" />
                            </div>
                        </div>
                    </form>

                    <div id="navmain" class="nav-collapse collapse navbar-responsive-collapse">
						<div class="pull-left">

						</div>
						
						<div class="transparent">
						
						<ul class="nav navbar-nav pull-right">
                            <li >
								 <a href="https://rentprogress.securecafe.com/residentservices/apartmentsforrent/userlogin.aspx" target="_blank" class="fbold">Log In</a>
							</li>
							<li >
								   <%: Html.ActionLink("Help", "Help", "Home",new{@class = "fbold" }) %>
							</li>
						</ul>
                            <!-- end nav pull-right -->
                            </div>
					</div><!-- end nav-collapse -->

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
    <div class="row pb40">
                <img src="../images/About_1.jpg" style=" max-width:100%;" />
            </div>
    <!-- Content -->
    <div class="home-wrapper">
        <div class="home-content">
            <h2 class="osLight" style=" font-weight:bolder; 
   color:#79D214">We Invest in You</h2>
            <h3 class="osLight fsize14" style="color:#555a5c; font-weight:bolder;">We don't invest in houses. We invest in communities. Communities than you can call home.</h3>

                <h4 class="osLight" style="color:#555a5c; text-align:justify; line-height:32px;margin-top: 30px;">Progress Residential is one of the largest providers of high quality single-family rental homes in the
United States, with more than 13,000 homes in 27 of the country’s fastest growing markets. Our
corporate office is located in Scottsdale, Arizona with regional offices in Tampa, Las Vegas, Dallas,
Houston, and Atlanta, and we’re continuing to expand. </h4>

            <h4 class="osLight" style="color:#555a5c; text-align:justify; line-height:32px;margin-top: 30px;">
                Today, people need greater flexibility to seize opportunities without sacrificing their quality of life. By
carefully selecting well-maintained homes in planned communities, we provide value to our customers.
Our team of experienced, knowledgeable, top performers is devoted to providing red-carpet customer
care to help make finding, moving into, and living in a rental home an easy process. Our mission is to
provide the highest quality service to our future residents, current residents, employees, and investors
through professionalism, integrity, and responsiveness. 
                </h4>
            <h4 class="osLight" style="color:#555a5c; text-align:justify; line-height:32px;margin-top: 30px;">
                We are committed to creating a new way of living in the 21st century. We believe that we have a home for
every lifestyle, and we can’t wait to show you how Progress starts here. 
            </h4>

           
        </div>
    </div>
    <div class="row pb40">
                <img src="../images/About_banner3.png" style="max-width:100%; " />
    </div>
  
    <div class="home-wrapper">
        <div class="home-content">
                        
             <div class="row pb40">
                
                 <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                   
                    <div id="Div1" class="carousel slide carousel-wb mb20" data-ride="carousel">
                      
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="../images/About_1_16.jpg" class="home-testim-avatar" alt="Jane Smith"></div>
                           
                        </div>
                    </div>

                     <div id="Div9" class="carousel slide carousel-wb mb20" data-ride="carousel">
                      
                        <div class="carousel-inner">
                            <div class="home-testim1">
                                    <div class="home-testim1-text osLight"><h5 class="fbold">THOUSANDS OF QUALITY HOMES</h5>"Not only do we have a large selection of homes, but 
                                        those homes are carefully selected to ensure that we put quality first. Our stringent standards for finishes, 
                                        school district, and floor plans ensure that when you rent a Progress Residential home you know you have a 
                                        space you can be proud to show to your friends.</div>
                         </div>
                           
                        </div>
                    </div>


                </div>

                 <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                   
                    <div id="Div2" class="carousel slide carousel-wb mb20" data-ride="carousel">
                      
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="../images/About_1_18.jpg" class="home-testim-avatar" alt="Jane Smith"></div>
                           
                        </div>
                    </div>

                     <div id="Div3" class="carousel slide carousel-wb mb20" data-ride="carousel">
                      
                        <div class="carousel-inner">
                            <div class="home-testim1">
                                   <div class="home-testim1-text osLight"><h5 class="fbold">EASY TO USE</h5>"We've simplified the process to emphasize what's 
                                        important to you, as a resident. Exactly what you need and less of what you don't.</div>
                         </div>
                           
                        </div>
                    </div>


                </div>

                 <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                   
                    <div id="Div4" class="carousel slide carousel-wb mb20" data-ride="carousel">
                      
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="../images/About_1_20.jpg" class="home-testim-avatar" alt="Jane Smith"></div>
                           
                        </div>
                    </div>

                     <div id="Div5" class="carousel slide carousel-wb mb20" data-ride="carousel">
                      
                        <div class="carousel-inner">
                            <div class="home-testim1">
                                    <div class="home-testim1-text osLight"><h5 class="fbold">WHAT MATTERS MOST</h5> "Our commitment to our residents is what matters most to us. 
                                       Whether you have questions about our rental process or what it means to live in a planned community, we have experts available to help you
                                        24/7/365. We believe that if we “wow” you every time , you’ll never want to leave. </div>
                         </div>
                           
                        </div>
                    </div>


                </div>

                 <div class="col-xs-12 col-sm-6 col-md-3 col-lg-3">
                   
                    <div id="Div6" class="carousel slide carousel-wb mb20" data-ride="carousel">
                      
                        <div class="carousel-inner">
                            <div class="item active">
                                <img src="../images/About_1_22.jpg" class="home-testim-avatar" alt="Jane Smith"></div>
                           
                        </div>
                    </div>

                     <div id="Div7" class="carousel slide carousel-wb mb20" data-ride="carousel">
                      
                        <div class="carousel-inner">
                            <div class="home-testim1">
                                    <div class="home-testim1-text osLight"><h5 class="fbold">MADE WITH INTEGRITY</h5> "Our approach is different. We’re not just renting houses, 
                                        we’re helping people find their homes. We don’t like to settle, and neither do our residents. So we
                                        partner with you to find the perfect space for you at every stage of your life.</div>
                         </div>
                           
                        </div>
                    </div>


                </div>

               
                   </div>
        </div>
    </div>

    <div>
                <img src="../images/About_banner4.png" style="max-width:100%;" />
    </div>
  

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script type="text/javascript">
        $(document).ready(function () {
            $('#btnSearch').click(function () {
                var searchString = $('#txtSearch').val();
                var url = '<%=Url.Action("Index", "PropertyDetails", new { s = "__id__" })%>';
                window.location.href = url.replace('__id__', searchString);
            });

            $('#txtSearch').autocomplete({
                source: '<%:Url.Action("AutocompleteAddress")%>'
                        });

    });
    </script>

</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
