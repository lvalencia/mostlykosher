//= require jquery
//= require moment
//= require underscore-1.8.3.min.js

var domElement = {};
(function ($, element) {
  element.isoDateDOM = function isoDateDOM (utcDate) {
    return $('<td class="date iso8601">'+utcDate+'</td>');
  }
})(jQuery, domElement);
