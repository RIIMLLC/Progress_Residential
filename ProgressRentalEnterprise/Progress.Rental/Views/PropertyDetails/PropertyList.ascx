<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Progress.Rental.Model.Properties>>" %>

<div class="col-xs-12 col-sm-6 col-md-7 col-lg-7">

    <div class="row1" style="min-height: 1200px; max-height: 1250px; overflow-y: scroll;">
        <style>
            .DefaultImage {
                background-image: url("../../Images/SiteImages/DefaultImage.png");
                height: auto;
                width: auto;
                background-repeat: no-repeat;
                background-position: center center;
            }
        </style>

        <h3 class="home-result">
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
                    <img onerror="imageError(this)" src="<%= Html.Encode(item.ImagePath) %>" class="img-hover DefaultImage" style="width: 100%; height: 100% !important; background-color: #cacaca;padding-top: 30px;">

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

<div class="col-xs-12 col-sm-6 col-md-5 col-lg-5" style="margin-top: 10px; margin-left: 10px; width: 515px;">

    <iframe id="iframe" src='<%: Url.Action("MapBox","PropertyDetails",Model)%>' width="100%" height="571px" frameborder="0"></iframe>

</div>
<script type="text/javascript">
    $(document).ready(function () {
       
    });

    function imageError(element) {
        element.onerror = '';
        element.src = '../Images/SiteImages/DefaultImage.png';
    }
</script>


