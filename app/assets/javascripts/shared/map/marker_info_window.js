var MarkerInfoWindow = (function ($) {
  return function MarkerInfoWindow (params) {
    var infoWindow;
    var options = {
      title: '',
      address: '',
      marker: null,
      map: null,
      openAutomatically: true
    };
    $.extend(options, params);

    // Public
    function attachListener() {
      infoWindow = new google.maps.InfoWindow({ content: _contentHtml() });
      options.marker.addListener('click', _clickHandler);
      if (options.openAutomatically) {
        infoWindow.open(options.map, options.marker);
      }
      return infoWindow;
    }

    // Hoisted
    function _contentHtml() {
      return '<p class="g-title">'+options.title+'</p><p class="g-info">'+options.address+'</p>';
    }
    function _clickHandler() {
      if (_infoWindowOpen()) {
        infoWindow.close();
      }
      else {
        _openInfoWindow();
      }
    }
    function _infoWindowOpen() {
      var map = infoWindow.getMap();
      return (map !== null && typeof map !== "undefined");
    }
    function _openInfoWindow() {
      infoWindow.open(options.map, options.marker);
    }

    // Interface
    return {
      attach: attachListener
    };
  };
})(jQuery);