var MapMarker = (function ($) {
  return function MapMarker (params) {
    var options = {
      map: null,
      position: null
    };
    $.extend(options, params);

    // Public
    function attachMarker() {
      return new google.maps.Marker(options);
    }

    // Interface
    return {
      mark: attachMarker
    };
  }
})(jQuery);