<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>



<div class="container">
    <% if (Model != null && Model.Count > 0) %>
    <%{ %>
    <div class="thumbnails row">
        <%if (Model[0] != null) %>
        <% { %>
        <div class="col-3">

            <a href="PropertyDetails/Property?p= <%= Html.Encode(Model[0].PropertyId) %>&k=<%= Html.Encode(Model[0].Street) %> &r=<%= Html.Encode("fe") %> ">
                <div class="thumbnail">
                    <object data="<%= Html.Encode(Model[0].ImagePath) %>" type="image/png">
                        <img src="../../Images/DefaultImage.jpg" class="img-responsive" />
                    </object>

                    <div class="label label-success price" style="background-color:#74c913;">
                        $<%= Html.Encode(Model[0].MarketRent) %>
                    </div>

                    <div class="caption">
                        <div class=" propertybottom features ftypeca fsize16 fbold opa8">
                            <div class="pull-left">
                                <span><%= Html.Encode(Model[0].Beds ) %><%--<%= Html.Encode(item.BedRooms) %>--%> BR / <%= Html.Encode(string.Format("{0:0.##}", Model[0].Baths)) %><%--<%= Html.Encode(item.BathRooms) %>--%> BA</span>
                            </div>
                            <div class="pull-right">
                                <span class="bath"><%= Html.Encode(Model[0].City) %><%--<%= Html.Encode(item.City) %>--%>, <%= Html.Encode(Model[0].States) %><%--<%= Html.Encode(item.States) %>--%></span>
                            </div>
                        </div>
                    </div>
                    <!-- end caption -->
                </div>
                <!-- end thumbnail -->
            </a>


        </div>
        <!-- end col-3 -->
        <%} %>







        <%if (Model.Count > 1 && Model[1] != null) %>
        <% { %>
        <div class="col-3 ">
            <a href="PropertyDetails/Property?p= <%= Html.Encode(Model[1].PropertyId) %>&k=<%= Html.Encode(Model[1].Street) %> &r=<%= Html.Encode("fe") %> ">
                <div class="thumbnail">
                    <object data="<%= Html.Encode(Model[1].ImagePath) %>" type="image/png">
                        <img src="../../Images/DefaultImage.jpg" class="img-responsive" />
                    </object>

                    <div class="label label-success price" style="background-color:#74c913;">
                        $<%= Html.Encode(Model[1].MarketRent) %>
                    </div>

                    <div class="caption">
                        <div class=" propertybottom features ftypeca fsize16 fbold opa8">
                            <div class="pull-left">
                                <span><%= Html.Encode(Model[1].Beds ) %><%--<%= Html.Encode(item.BedRooms) %>--%> BR / <%= Html.Encode(string.Format("{0:0.##}", Model[1].Baths)) %><%--<%= Html.Encode(item.BathRooms) %>--%> BA</span>
                            </div>
                            <div class="pull-right">
                                <span class="bath"><%= Html.Encode(Model[1].City) %><%--<%= Html.Encode(item.City) %>--%>, <%= Html.Encode(Model[1].States) %><%--<%= Html.Encode(item.States) %>--%></span>
                            </div>
                        </div>
                    </div>
                    <!-- end caption -->
                </div>
                <!-- end thumbnail -->
            </a>
        </div>
        <!-- end col-3 -->



        <%} %>






        <%if (Model.Count > 2 && Model[2] != null) %>
        <% { %>
        <div class="col-3 ">
            <a href="PropertyDetails/Property?p= <%= Html.Encode(Model[2].PropertyId) %>&k=<%= Html.Encode(Model[2].Street) %> &r=<%= Html.Encode("fe") %> ">
                <div class="thumbnail">
                    <object data="<%= Html.Encode(Model[2].ImagePath) %>" type="image/png">
                        <img src="../../Images/DefaultImage.jpg" class="img-responsive" />
                    </object>

                    <div class="label label-success price" style="background-color:#74c913;">
                        $<%= Html.Encode(Model[2].MarketRent) %>
                    </div>

                    <div class="caption">
                        <div class=" propertybottom features ftypeca fsize16 fbold opa8">
                            <div class="pull-left">
                                <span><%= Html.Encode(Model[2].Beds ) %><%--<%= Html.Encode(item.BedRooms) %>--%> BR / <%= Html.Encode(string.Format("{0:0.##}", Model[2].Baths)) %><%--<%= Html.Encode(item.BathRooms) %>--%> BA</span>
                            </div>
                            <div class="pull-right">
                                <span class="bath"><%= Html.Encode(Model[2].City) %><%--<%= Html.Encode(item.City) %>--%>, <%= Html.Encode(Model[2].States) %><%--<%= Html.Encode(item.States) %>--%></span>
                            </div>
                        </div>
                    </div>
                    <!-- end caption -->
                </div>
                <!-- end thumbnail -->
            </a>
        </div>
        <!-- end col-3 -->


        <%} %>

        <div class="col-1">
        </div>

        <div class="col-1" style="margin-top:60px">
            <div class="thumbnail">
                <img id="imgNext" src="../../Images/right-arrow.png" style="opacity: 0.3; height:60px" width="90" />
            </div>
            <!-- end thumbnail -->


        </div>




    </div>
    <%--end of row--%>

    <%} %>
</div>
<%--end of container--%>
<script>
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


