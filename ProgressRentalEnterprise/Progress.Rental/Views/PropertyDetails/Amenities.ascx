<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<%@ Import Namespace ="Progress.Rental.Model" %>    
    <% if (ViewBag.AmenitiesDetails != null) {
           bool kitchen = false;
           bool livingRoom = false;
           bool bathRoom = false;
           bool convenience = false;
           bool community = false;
           bool additional = false;
           %>
           <% PropertyAmenities propertyAmenities = ViewBag.AmenitiesDetails; %>
           <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 s-menu-item1">
            <br />
            <br />
            <br />
            <h3 class="osLight ftypeso fbold fsize18" style="text-align: left;">
                <img src="../images/kitchen.png" />KITCHEN</h3>

            <%if (propertyAmenities.Dishwasher_Am != "No")
              {
                  kitchen = true; %>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Dishwasher</h4>
            <% }%>

            <%if (propertyAmenities.Kitchen_Island != "No")
              {
                  kitchen = true;%>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Kitchen Island</h4>
            <% }%>
            <%if (propertyAmenities.Wall_Oven != "No")
              {
                  kitchen = true;%>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Microwave</h4>
            <% }%>
            <%if (propertyAmenities.Pantry != "No")
              {
                  kitchen = true;%>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Pantry</h4>
            <% }%>
            <%if (propertyAmenities.Stainless_Steel_Appliances != "No")
              {
                  kitchen = true;%>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Stainless Steel Appliances</h4>
            <% }%>
            <%if (propertyAmenities.Gas_Range_Oven != "No")
              {
                  kitchen = true;%>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Stove/Oven</h4>
            <% }%>
            
            <%if (kitchen == false) { %>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">No Match Found</h4>
            <%} %>
            <!--<h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Breakfast Bar</h4>-->
            <!--<h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Refrigerator</h4>-->
        </div>

        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 s-menu-item1">
            <br />
            <br />
            <br />
            <h3 class="osLight ftypeso fbold fsize18" style="text-align: left;">
                <img src="../images/living.png" />LIVING ROOM</h3>

            <%if (propertyAmenities.Bonus_Room != "No")
              {
                  livingRoom = true; %>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Bonus Room</h4>
            <% }%>
            <%if (propertyAmenities.Ceiling_Fan != "No")
              {
                  livingRoom = true; %>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Ceiling Fans</h4>
            <% }%>
            <%if (propertyAmenities.Master_Bedroom_Upstairs != "No")
              {
                  livingRoom = true; %>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">First Floor Bedroom</h4>
            <% }%>
            <%if (propertyAmenities.Loft != "No")
              {
                  livingRoom = true; %>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Loft</h4>
            <% }%>
            <%if (propertyAmenities.Walk_in_Closet != "No")
              {
                  livingRoom = true; %>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Walk-In Closet</h4>
            <% }%>
            
            <%if (livingRoom == false) { %>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">No Match Found</h4>
            <%} %>

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

        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 s-menu-item1" style="clear: left;">
            <br />
            <h3 class="osLight ftypeso fbold fsize18" style="text-align: left;">
                <img src="../images/bathroom.png">BATHROOM</h3>
            
            <%if (propertyAmenities.Double_Sinks != "No")
              {
                  bathRoom = true; %>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Dual Sinks</h4>
            <% }%>
            <%if (propertyAmenities.Oversized_Bathtub != "No")
              {
                  bathRoom = true; %>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Oversized Tub</h4>
            <% }%>
            <%if (propertyAmenities.Separate_Shower != "No")
              {
                  bathRoom = true; %>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Separate Shower</h4>
            <% }%>

            <%if (bathRoom == false) { %>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">No Match Found</h4>
            <%} %>

            <!--
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Dual Sinks</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Oversized Tub</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Separate Shower</h4>
            -->
        </div>

        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 s-menu-item1">
            <br />
            <h3 class="osLight ftypeso fbold fsize18" style="text-align: left;">
                <img src="../images/convi.png">CONVENIENCE</h3>
            
            <%if (convenience == false) { %>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">No Match Found</h4>
            <%} %>

            <!--
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Air Conditioning</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Central Heat</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Laundry Room</h4>
            -->
        </div>

        <div class="col-xs-12 col-sm-6 col-md-6 col-lg-6 s-menu-item1" style="clear: left;">
            <br />
            <h3 class="osLight ftypeso fbold fsize18" style="text-align: left;">
                <img src="../images/community.png">COMMUNITY</h3>
            
            <%if (community == false) { %>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">No Match Found</h4>
            <%} %>

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
            <br />
            <h3 class="osLight ftypeso fbold fsize18" style="text-align: left;">
                <img src="../images/add.png">ADDITIONAL BENEFITS</h3>
            
            <%if (propertyAmenities.Open_Floor_Plan != "No")
              {
                  additional = true; %>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Open Floor plan</h4>
            <% }%>
            <%if (propertyAmenities.Tile_Floors != "No")
              {
                  additional = true; %>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Tile Floors</h4>
            <% }%>
            <%if (propertyAmenities.Hardwood_Floors != "No")
              {
                  additional = true; %>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Hard Wood Floors</h4>
            <% }%>
            <%if (propertyAmenities.Carpeted_Floors != "No")
              {
                  additional = true; %>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Carpet Floors</h4>
            <% }%>


            <%if (additional == false) { %>
               <h4 class="osLight ftypeso fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">No Match Found</h4>
            <%} %>

            <!--
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Open Floor plan</h4>
            <h4 class="osLight ftypeca fsize14" style="color: #555a5c; text-align: left; line-height: 18px; padding-left: 50px;">Tile Floors</h4>
            -->
        </div>

    <%} %>
    <%else { %>
        <br /> 
        <div class="osLight ftypeso fsize14" style="color: #555a5c; text-align:center; line-height: 18px;">No Amenities Found</div>
    <%} %> 



