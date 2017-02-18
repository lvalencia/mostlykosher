var AddressGeocoder = (function ($){
  return function AddressGeocoder (params) {
    var options = {
      geocoder: null,
      address: '',
      handler: null
    };
    $.extend(options, params);
    function geocodeAddress() {
      options.geocoder.geocode({
        address: options.address
      }, options.handler.callback);
    }
    return {
      geocode: geocodeAddress
    };
  };
})(jQuery);