//= require spec_helper
//= require sinon
//= require google_maps_api
//= require shared/map/address_geocoder

describe('AddressGeocoder', function() {
  describe('#geocode', function() {
    var geocoder, mockGeocoder, handler, address;
    before(function (){
      handler = sinon.stub({
        callback: function () {}
      }, "callback");
      geocoder = new google.maps.Geocoder();
      mockGeocoder = sinon.mock(geocoder);
      address = '1600 Amphitheatre Pkwy, Mountain View, CA 94043';
    });
    it('geocodes address', function (){
      mockGeocoder.expects("geocode").once();

      AddressGeocoder({
        geocoder: geocoder,
        address: address,
        handler: handler
      }).geocode();

      mockGeocoder.verify();
    });
  });
});
