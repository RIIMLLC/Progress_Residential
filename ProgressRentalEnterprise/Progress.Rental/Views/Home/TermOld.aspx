<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Terms And Policy
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
                <div class="col-xs-12 col-sm-6 col-md-8 col-lg-8 ">
                    <h2 class="terms_head">Terms & Privacy</h2>
                    <br /><br /><br />
                    <h3 class="fsize16 fbold fcolordash" style="text-align: left;opacity: 0.7;">1. Privacy Policy</h3>

                    <h4 class="fsize14"  style="color: #767674; text-align: left; line-height: 22px;text-align:justify;">This Privacy Policy governs the manner in which Progress Residential collects, uses, maintains, and discloses information collected from users (each, a "User") of the www.RentProgress.com website ("Site"). This privacy policy applies to the Site and all products and services offered by Progress Residential.

                    </h4>
                    <br />
                    <br />
                    <h3 class="fsize16 fbold fcolordash" style="text-align: left;opacity: 0.7;">2. Personal identification information </h3>

                    <h4 class="fsize14" style="color: #767674; text-align: left; line-height: 22px;text-align:justify;">We may collect personal identification information from Users in a variety of ways, including, but not limited to, when Users visit our site, fill out a form, and in connection with other activities, services, features, or resources we make available on our Site. As appropriate, we may ask Users for their names, email addresses, mailing addresses, phone numbers, and credit card information. However, Users may visit our Site anonymously. We will collect personal identification information from Users only if they voluntarily submit such information to us. Users can always refuse to supply personally identification information, except that it may prevent them from engaging in certain Site-related activities. 
                    </h4>
                    <br />
                    <br />
                    <h3 class="fsize16 fbold fcolordash" style="text-align: left;opacity: 0.7;">3. Non-personal identification information</h3>

                    <h4 class="fsize14" style="color: #767674; text-align: left; line-height: 22px;text-align:justify;">We may collect non-personal identification information about Users whenever they interact with our Site. Non-personal identification information may include the browser name, the type of computer, and technical information about Users’ means of connection to our Site, such as the operating system and the Internet service providers utilized and other similar information.

                    </h4>
                    <br />
                    <br />
                    <h3 class="fsize16 fbold fcolordash" style="text-align: left;opacity: 0.7;">4.Web browser cookies </h3>

                    <h4 class="fsize14" style="color: #767674; text-align: left; line-height: 22px;text-align:justify;">Our Site may use "cookies" to enhance Users’ experiences. Web browsers place these cookieson Users’ hard drives for record-keeping purposes and tracking information. Users may choose to set their web browsers to refuse cookies or alert them when cookies are being sent. If they do so, some parts of the Site may not function properly.
                    </h4>
                    <br />
                    <br />
                    <h3 class="fsize16 fbold fcolordash" style="text-align: left;opacity: 0.7;">5.How we use collected information </h3>

                    <h4 class="fsize14" style="color: #767674; text-align: left; line-height: 22px;text-align:justify;">Progress Residential collects and uses Users’ personal information for the following purposes:
                    </h4>

                    <h4 class="fsize14" style="color: #767674; text-align: left; line-height: 22px;text-align:justify;">1. To improve customer service – Your information helps us to respond to your customer service requests and support needsmore effectively.</h4>
                    <h4 class="fsize14" style="color: #767674; text-align: left; line-height: 22px;text-align:justify;">2. To process transactions – We may use the information Users provide about themselves when placing an order to provide service to that order. We do not share this information with outside parties except to the extent necessary to provide the service. </h4>
                    <h4 class="fsize14" style="color: #767674; text-align: left; line-height: 22px;text-align:justify;">3. To administer a content, promotion, survey, or other Site feature – We may send Users information they agreed to receive about topics we think will be of interest to them.</h4>
                    <h4 class="fsize14" style="color: #767674; text-align: left; line-height: 22px;text-align:justify;">4. To send periodic emails – We will only use the email address Users provide to respond to their inquiries, and/or other requests or questions. If Users decide to opt-in to our mailing list, they will receive emails that may include company news, updates, related product or service information, etc. If at any time Users would like to unsubscribe from receiving future emails, we include detailed unsubscribe instructions at the bottom of each email, or Users may contact us via our Site.</h4>
                    <br /><br />
                    <h3 class="fsize16 fbold fcolordash" style="text-align: left;opacity: 0.7;">How we protect your information</h3>
                    <h4 class="fsize14" style="color: #767674; text-align: left; line-height: 22px;text-align:justify;">We adopt appropriate data collection, storage, and processing practices and security measures to protect against unauthorized access, alteration, disclosure, or destruction of your personal information, username, password, transaction information, and data stored on our Site.</h4>
                    <h4 class="fsize14" style="color: #767674; text-align: left; line-height: 22px;text-align:justify;">Sensitive and private data exchange between the Site and its Users happens over a SSL secured communication channel and is encrypted and protected with digital signatures.</h4>
                    <br /><br />
                    <h3 class="fsize16 fbold fcolordash" style="text-align: left;opacity: 0.7;">Sharing your personal information</h3>
                    <h4 class="fsize14" style="color: #767674; text-align: left; line-height: 22px;text-align:justify;">We do not sell, trade, or rent Users’ personal identification information to others. We may share generic aggregated demographic information not linked to any personal identification information regarding visitors and users with our business partners, trusted affiliates, and advertisers for the purposes outlined above.</h4>
                    <br /><br />
                    <h3 class="fsize16 fbold fcolordash" style="text-align: left;opacity: 0.7;">Compliance with children's online privacy protection act</h3>
                    <h4 class="fsize14" style="color: #767674; text-align: left; line-height: 22px;text-align:justify;">Protecting the privacy of the very young is especially important. For that reason, we never collect or maintain information at our Site from those we actually know are under 13, and no part of our website is structured to attract anyone under 13.</h4>
                    <br /><br />
                     <h3 class="fsize16 fbold fcolordash" style="text-align: left;opacity: 0.7;">Changes to this privacy policy</h3>
                    <h4 class="fsize14" style="color: #767674; text-align: left; line-height: 22px;text-align:justify;">Progress Residential has the discretion to update this privacy policy at any time. When we do, we will revise the updated date at the bottom of this page. We encourage Users to check this page for any changes and stay informed about how we are helping to protect the personal information we collect. You acknowledge and agree that it is your responsibility to review this privacy policy periodically and become aware of modifications.</h4>
                    <br /><br />
                     <h3 class="fsize16 fbold fcolordash" style="text-align: left;opacity: 0.7;">Your acceptance of these terms</h3>
                    <h4 class="fsize14" style="color: #767674; text-align: left; line-height: 22px;text-align:justify;">By using this Site, you signify your acceptance of this policy. If you do not agree to this policy, please do not use our Site. Your continued use of the Site following the posting of changes to this policy will be deemed your acceptance of those changes.</h4>
                    <br /><br />
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
