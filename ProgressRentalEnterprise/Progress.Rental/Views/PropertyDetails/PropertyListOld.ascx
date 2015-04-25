<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<IEnumerable<Progress.Rental.Model.Properties>>" %>
<div class="row1" style="min-height: 1300px; max-height: 1400px; overflow-y: scroll;">
    <style>
        .DefaultImage {
            background-image: url("../../Images/DefaultImage.jpg");
            background-repeat: no-repeat;
            background-position: 50% 50%;
        }
    </style>
    <br />
    <h3 class="ftypeca fsize18 fbold opa8" style="text-align: right; margin-right: 10px;">

        <%-- <%= Html.Encode(Model.Items.Count) %>--%>
        <%if (ViewBag.Total != null) { %>
          <%: ViewBag.Total %> Homes Found
        <%} %>
        <%else { %>
            0 Homes Found
        <%} %>
        </h3>
    <br />

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
                <img src="<%= Html.Encode(item.ImagePath) %>" class="img-hover DefaultImage" />


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
