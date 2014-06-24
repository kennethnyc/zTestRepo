<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Playpen.Default" %>




<!DOCTYPE html>
<html>
  <head>
    <title>Simple Map</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
      html, body, #map-canvas {
        height: 100%;
        margin: 0px;
        padding: 0px
      }
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&sensor=false"></script>
    <script>
        var map;
        function initialize() {
            var mapOptions = {
                zoom: 8,
                center: new google.maps.LatLng(-34.397, 150.644)
            };
            map = new google.maps.Map(document.getElementById('map-canvas'),
                mapOptions);
        }

        google.maps.event.addDomListener(window, 'load', initialize);

    </script>
  </head>
  <body>
    <div id="map-canvas"></div>
  </body>
</html>




<%--Multiple Markers--%>
<%--<!DOCTYPE html>
<html> 
<head> 
  <meta http-equiv="content-type" content="text/html; charset=UTF-8" /> 
  <title>Google Maps Multiple Markers</title> 
  <script src="http://maps.google.com/maps/api/js?sensor=false"  type="text/javascript"></script>
          
</head> 
<body>
  <div id="map" style="width: 500px; height: 400px;"></div>

  <script type="text/javascript">
      var locations = [
        ['Bondi Beach', -33.890542, 151.274856, 4],
        ['Coogee Beach', -33.923036, 151.259052, 5],
        ['Cronulla Beach', -34.028249, 151.157507, 3],
        ['Manly Beach', -33.80010128657071, 151.28747820854187, 2],
        ['Maroubra Beach', -33.950198, 151.259302, 1]
      ];

      var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 10,
          center: new google.maps.LatLng(4.140634, 109.6181485),
          mapTypeId: google.maps.MapTypeId.ROADMAP
      });

      var infowindow = new google.maps.InfoWindow();

      var marker, i;

      for (i = 0; i < locations.length; i++) {
          marker = new google.maps.Marker({
              position: new google.maps.LatLng(locations[i][1], locations[i][2]),
              map: map
          });

          google.maps.event.addListener(marker, 'click', (function (marker, i) {
              return function () {
                  infowindow.setContent(locations[i][0]);
                  infowindow.open(map, marker);
              }
          })(marker, i));
      }
  </script>
</body>
</html>--%>
<%--Multiple Markers--%>


