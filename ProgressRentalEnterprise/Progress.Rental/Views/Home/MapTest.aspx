<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    MapTest
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



    <meta charset="utf-8" />
   
    <meta name='viewport' content='initial-scale=1,maximum-scale=1,user-scalable=no' />
    <script src='https://api.tiles.mapbox.com/mapbox.js/v2.1.6/mapbox.js'></script>
    <link href='https://api.tiles.mapbox.com/mapbox.js/v2.1.6/mapbox.css' rel='stylesheet' />
    <style>
        body {
            margin: 0;
            padding: 0;
        }

        #map {
            position: absolute;
            top: 0;
            bottom: 0;
            width: 100%;
        }
    </style>


    <div id='map'></div>
    <script>
        L.mapbox.accessToken = 'pk.eyJ1IjoiYWJkdWxrYWRlciIsImEiOiJLdmN6ajVnIn0.2iFehEjzaDuISVgy1KKhiA';
        var map = L.mapbox.map('map', 'examples.map-i86nkdio')
            .setView([40, -74.50], 9);
    </script>



</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <script src='https://api.tiles.mapbox.com/mapbox.js/v2.1.6/mapbox.js'></script>
    <link href='https://api.tiles.mapbox.com/mapbox.js/v2.1.6/mapbox.css' rel='stylesheet' />
</asp:Content>
