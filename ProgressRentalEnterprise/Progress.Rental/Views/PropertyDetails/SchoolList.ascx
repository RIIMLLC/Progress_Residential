<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl<dynamic>" %>
<table class="table table-striped osLight ftypeca fsize14 fbold fcolorash">
    <%if (ViewBag.SchoolList != null)
      { %>
    <% foreach (var school in ViewBag.SchoolList)
       {%>
    <tr>
        <td width="48%"><%: school.name %> </td>
        <td width="48%"><%: school.distance %> miles away</td>
        <%if (school.gsRating >= 1 && school.gsRating <= 3)
          { %>
        <td width="4%" class="fsize30 fcolor" style="background-color: #FE0000"><%: school.gsRating %></td>
        <%} %>
        <%else if (school.gsRating >= 4 && school.gsRating <= 7)
          { %>
        <td width="4%" class="fsize30 fcolor" style="background-color: #F8931D"><%: school.gsRating %></td>
        <%} %>
        <%else if (school.gsRating >= 8 && school.gsRating <= 10)
          { %>
        <td width="4%" class="fsize30 fcolor" style="background-color: #3AB54A"><%: school.gsRating %></td>
        <%} %>
        <%else if (school.gsRating == 0)
          { %>
        <td width="4%" class="fsize30 fcolor" style="background-color: grey"><%: "NR" %></td>
        <%} %>
        <%else
          { %>
        <td width="4%" class="fsize30 fcolor" style="background-color: white"><%: school.gsRating %></td>
        <%} %>
    </tr>
    <%} %>
    <%} %>
    <%else
      {%>
    <tr style="text-align: center">
        <td width="100%">No Matchng Schools Found</td>
    </tr>
    <%} %>
</table>
