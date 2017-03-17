// Dependencies
//
//= require jquery
//= require moment
//= require underscore-1.8.3.min.js
//= require dropzone
//
//

var domElement = {};
(function ($, element) {
  element.isoDateDOM = function isoDateDOM (utcDate) {
    return $('<td class="date iso8601">'+utcDate+'</td>');
  };
  element.navigationBar = function navigationBar (target) {
    return $('<nav class="navbar"><a href="#'+target+'"></a></nav>');
  };
  element.divWithId = function divWithId(id) {
    return $('<div id="'+id+'"></div>');
  };
  element.mapContainer = function mapContainer(params) {
    var options = {
      id: 'map_canvas'
    };
    $.extend(options, params);
    return $('<div id="'+options.id+'" ></div>');
  };
  element.dropzone = function dropzone () {
    return $('<form class="dropzone" action="#"></form>');
  };
})(jQuery, domElement);
