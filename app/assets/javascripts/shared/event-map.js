var EventMap = (function ($) {
  return function EventMap(params) {
    var options = {
      target: 'map_canvas',
      raiseAlert: false
    };
    $.extend(options, params);
    function initializeMap() {
      var geocoder = new google.maps.Geocoder();
      var map = new google.maps.Map(document.getElementById(options.target), {
        zoom:15,
        scrollwheel: false,
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
      var address = $('#'+options.target).attr('data-location');
      var infoTitle = $('.upcoming-event h3').text();
      //Set Address
      geocodeAddress(geocoder,map, address, infoTitle);
    };
    // protected
    // Address Lookup
    function geocodeAddress(geocoder, map, address, infoTitle) {
      geocoder.geocode({ address:address }, function (results, status) {
        if (status === google.maps.GeocoderStatus.OK) {
          //Add InfoWindow
          var contentString = '<p class="g-title">'+infoTitle+'</p>';
          contentString += '<p class="g-info">'+results[0]["formatted_address"]+'</p>';
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
            if (_isInfoWindowOpen(infowindow)) {
              infowindow.close();
            }
            else {
              infowindow.open(map, marker);
            }
          });
          infowindow.open(map, marker);
        } else if (options.raiseAlert) {
          alert('Google was unable to load the map for the following reason: ' + status);
        }
      });
    };
    // private
    // check if the info window inside the google map is open
    function _isInfoWindowOpen(infoWindow){
      var map = infoWindow.getMap();
      return (map !== null && typeof map !== "undefined");
    }
    return {
      googleCallback: initializeMap
    };
  };
})(jQuery);
