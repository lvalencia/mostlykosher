//= require spec_helper
//= require sinon
//= require google_maps_api
//= require shared/map/marker_info_window

describe('MarkerInfoWindow', function () {
  describe('#attach', function () {
    var infoTitle, formattedAddress, marker, map, spy;
    before(function () {
      var mapContainer = domElement.mapContainer('map_canvas');
      $root = $('#konacha');
      $root.append(mapContainer);

      map = new google.maps.Map(mapContainer[0]);
      marker = new google.maps.Marker();
      infoTitle = 'placeholder';
      formattedAddress = '123 Fake Street, Fake City, FS 12345';
      spy = sinon.spy(marker, "addListener");
    });
    it ('attaches info window to marker', function () {
      MarkerInfoWindow({
        title: infoTitle,
        address: formattedAddress,
        marker: marker,
        map: map
      }).attach();
      expect(marker.addListener.calledOnce).to.be.true;
    });
  });
});
