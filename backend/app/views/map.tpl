﻿<!DOCTYPE html>
<html>
  <head>
    <title>あのね、</title>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
    <div id="map"></div>
    <script>
    var map;
    var markers = [];
    var data = receiveData();
    var init_center = {lat: Number(data.lat), lng: Number(data.lng)};

    var labels = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    var labelIndex = 0;

    var directionsService;
    var directionsDisplay;

      function initMap() {
        map = new google.maps.Map(document.getElementById('map'), {
          zoom: 16,
          center: init_center
        });
        directionsService = new google.maps.DirectionsService;
        directionsDisplay = new google.maps.DirectionsRenderer;
        directionsDisplay.setOptions({
          suppressMarkers: true,
          preserveViewport: true
        });

        addMarker(init_center, "now");
        {% for spot in near_spot%}
          add_spot = {lat: {{spot[1]}}, lng: {{spot[0]}}};
          addMarker(add_spot, "");
        {% endfor %}
      }

      function receiveData(){
        var arg = new Object;
        arg["lat"] = {{lat}};
        arg["lng"] = {{lng}};
        return arg;
      }

      function addMarker(location, label){
          var marker = new google.maps.Marker({
            position: location,
            map: map,
            clickable: true,
            label: label
          });
          google.maps.event.addListener(marker, 'click', function()
          {
            ShowDirection(marker.position)
          });
          markers.push(marker);
      }

      function getPosition(){
        alert("Yes");
      }

      function ShowDirection(location){
        directionsDisplay.setMap(map);
        directionsService.route({
          origin: init_center,
          destination: location,
          travelMode: 'WALKING'
        },function(response, status) {
          if (status === 'OK') {
            directionsDisplay.setDirections(response);
          } else {
            window.alert('Directions request failed due to ' + status);
          }
        });
      }

    </script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDj8oKeKcUKdb9PGF5EZgF6-z30koUGkmQ&callback=initMap&language=ja&region=JP"
    async defer>
    </script>
  </body>
</html>