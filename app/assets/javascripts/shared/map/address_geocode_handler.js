var AddressGeocodeHandler = (function ($) {
  return function AddressGeocoderHandler (params) {
    var data, marker, infoWindow, success = google.maps.GeocoderStatus.OK;
    var options = {
      map: null,
      title: ''
    };
    $.extend(options, params);

    // Init
    _centerMap();

    // Public
    function handler(results, status) {
      data = results[0];
      if (status === success) {
        options.map.setCenter(options.location);
        marker = MapMarker({
          map: options.map,
          position: options.location
        }).mark();
        infoWindow = MarkerInfoWindow({
          title: options.title,
          address: options.address,
          marker: marker,
          map: options.map
        }).attach();
      }
    }

    // Hoisted
    function _centerMap(){
      var center;
      google.maps.event.addDomListener(options.map, 'idle', function calculateCenter() {
        center = this.getCenter();
      }.bind(options.map));
      google.maps.event.addDomListener(window, 'resize', function recenter() {
        this.setCenter(center);
      }.bind(options.map));
    }

    Object.defineProperty(
      options,
      "address",
      {
        get: function () {
          this.address = this._address_ || data["formatted_address"];
          return this._address_;
        },
        set: function (val) { this._address_ = val; },
        enumerable: false
      }
    );

    Object.defineProperty(
      options,
      "location",
      {
        get: function () {
          this.location = this._location_ || data.geometry.location;
          return this._location_;
        },
        set: function (val) { this._location_ = val; },
        enumerable: false
      }
    );

    // Interface
    return {
      callback: handler
    };
  }
})(jQuery);