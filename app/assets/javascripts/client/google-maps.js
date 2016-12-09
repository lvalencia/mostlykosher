//Begin Map Code
//Info Window Check if Open
function isInfoWindowOpen(infoWindow){
  var map = infoWindow.getMap();
  return (map !== null && typeof map !== "undefined");
}
//Address Lookup
function geocodeAddress(geocoder, map, address, infoTitle) {
  geocoder.geocode({ address:address }, function (results, status) {
    if (status === google.maps.GeocoderStatus.OK) {
      //Add InfoWindow
      var contentString = '<p class="title">'+infoTitle+'</p>';
      contentString += '<p class="info">'+results[0]["formatted_address"]+'</p>';
      var infowindow = new google.maps.InfoWindow({
        content: contentString,
      });
      //Set Center to Found Location
      map.setCenter(results[0].geometry.location);
      //Add Marker
      var marker = new google.maps.Marker({
        map: map,
        position: results[0].geometry.location,
        title:infoTitle,
      });
      marker.addListener('click', function() {
        if (isInfoWindowOpen(infowindow)) {
          infowindow.close();
        }
        else {
          infowindow.open(map, marker);
        }
      });
      infowindow.open(map, marker);
    } else {
      //alert('Geocode was not successful for the following reason: ' + status);
    }
  });
};
var initMap;
//End Map Code
ready  = function () {
  initMap = function () {
    var geocoder = new google.maps.Geocoder();
    var map = new google.maps.Map(document.getElementById('map_canvas'), {
      zoom:15,
      scrollwheel:false,
    });
    var center;
    function calculateCenter() {
      center = map.getCenter();
    }
    google.maps.event.addDomListener(map, 'idle', function() {
      calculateCenter();
    });
    google.maps.event.addDomListener(window, 'resize', function() {
      map.setCenter(center);
    });
    var address = $('.upcoming-event .content').attr('data-location');
    var infoTitle = $('.upcoming-event h3').text();
    //Set Address
    geocodeAddress(geocoder,map, address, infoTitle);
  }
}
$(document).on('ready page:load turbolinks:load', ready);
