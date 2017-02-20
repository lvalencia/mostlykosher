var GoogleMapsHandler = (function ($) {
  return function EventMap(params) {
    var options = {
      target: 'map_canvas',
      raiseAlert: false
    };
    $.extend(options, params);

    function geocodeAddress() {
      var mapElement = document.getElementById(options.target);
      AddressGeocoder({
        geocoder: new google.maps.Geocoder(),
        address: mapElement.getAttribute('data-location'),
        handler: AddressGeocodeHandler({
          map: new google.maps.Map(mapElement, {
            zoom:15,
            scrollwheel: false
          }),
          title: $('.upcoming-event h3').text()
        })
      }).geocode();
    }

    return {
      callback: geocodeAddress
    };
  };
})(jQuery);
