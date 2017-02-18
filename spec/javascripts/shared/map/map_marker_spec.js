//= require spec_helper
//= require google_maps_api
//= require shared/map/map_marker

describe('MapMarker', function () {
  describe('#mark', function () {
    var map, position, $root;
    before(function () {
      var mapContainer = domElement.mapContainer('map_canvas');
      $root = $('#konacha');
      $root.append(mapContainer);

      map = new google.maps.Map(mapContainer[0]);
      position = new google.maps.LatLng();
    });
    it('adds a mark to the map', function (){
      var marker = MapMarker({
        map: map,
        position: position
      }).mark();
      expect(marker).to.be.an(typeof (new google.maps.Marker));
    });
  });
});
