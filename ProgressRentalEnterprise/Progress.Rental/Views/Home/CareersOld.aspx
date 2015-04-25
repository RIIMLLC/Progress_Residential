<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Career
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
                       <a class="navbar-brand" href="../Home" style="margin-left:0px;">
                        <img src="../../Images/color_logo.png"  class="img-responsive"/></a>
                    </div>

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
							
							
						</ul><!-- end nav pull-right -->
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
    
     <div class="home-footer1" style="height: 160px; text-align: center;">
        <!--<div  style="padding-top:40px; padding-bottom:40px; flex-align:center; margin-left:40%; margin-right:40%;">-->
        <div class="home-wrapper ftypeca fbold" style="padding-left: 300px; padding-top: 50px;">
            <form class="form-inline" role="form" action="LoadPropertes" method="get">
                        <div class="form-group form-group1">
                            <div class="term_serc">
                                <a>
                                    <input type="button" id="btnSearch" value="" class="fa fa-search" style="background: url(../images/search_icon.png) no-repeat scroll 0% 70%; width: 30px; height: 26px; border: none; margin-top: -3px;margin-left:10px;" />
                                </a>
                                <input type="text" id="txtSearch" name="txtSearch" class="form-control abt_serc ftypeca opa8 fbold fcolorBlack fsize18" value="<%: ViewBag.Message %>" style="margin-top: 0px;" />
                            </div>
                        </div>
                    </form>
        </div>
    </div>

    <!-- Content -->
    
   <div class="home-wrapper">
        <div class="">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8 " >
                    <h2 class="career_head"> Careers</h2>
                    <br /><br />
                    <h4 class="osLight fsize15" style="color: #767674; text-align: left; line-height: 22px;">At Progress Residential, we not only help residents find exceptional homes, but we also help talented professionals find meaningful careers by providing a dynamic work environment with opportunities for growth.  </h4>
                    <br />
                    <h4 class="osLight fsize15" style="color: #767674; text-align: left; line-height: 22px;">We offer the following benefits to full-time employees:</h4>
                    <ol class="fsize14 fbold fcolordash" style="text-align: left;opacity: 0.7;">
                        <li>Medical</li>
                        <li>Dental</li>
                        <li>Vision</li>
                        <li>Life Insurance</li>
                        <li>Paid time off</li>
                    </ol>
                    
                    <h4 class="osLight fsize15" style="color: #767674; text-align: left; line-height: 22px;">And we have several career paths, including:</h4>
                    <ol>
                        <li>
                            <h4 class="osLight fsize15" style="color: #767674; text-align: left; line-height: 22px;">Property Management</h4>
                            <ul class="fsize14 fbold fcolordash" style="text-align: left;opacity: 0.7;">
                                <li>Leasing Associates</li>
                                <li>Property Managers</li>
                            </ul>
                        </li>
                        <li>
                            <h4 class="osLight fsize15" style="color: #767674; text-align: left; line-height: 22px;">Asset  Management</h4>
                            <ul class="fsize14 fbold fcolordash" style="text-align: left;opacity: 0.7;">
                                <li>Analysts</li>
                                <li>Acquisitions Specialists</li>
                            </ul>
                        </li>
                        <li>
                            <h4 class="osLight fsize15" style="color: #767674; text-align: left; line-height: 22px;">Construction & Maintenance</h4>
                             <ul class="fsize14 fbold fcolordash" style="text-align: left;opacity: 0.7;">
                                <li>Maintenance Technicians</li>
                                <li>Administrative Support</li>
                            </ul>
                        </li>
                        <li>
                            <h4 class="osLight fsize15" style="color: #767674; text-align: left; line-height: 22px;">Corporate</h4>
                            <ul class="fsize14 fbold fcolordash" style="text-align: left;opacity: 0.7;">
                                <li>Accounting& Finance</li>
                                <li>Human Resources</li>
                                <li>Legal</li>
                                <li>Marketing</li>
                                <li>Information Technology</li>
                            </ul>
                        </li>
                    </ol>
                   
                </div>
                
            </div>



        </div>
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
