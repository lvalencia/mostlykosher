//= require jquery
//= require moment
//= require underscore-1.8.3.min.js

var domElement = {};
(function ($, element) {
  element.isoDateDOM = function isoDateDOM () {
    return $('<td class="date iso8601">2016-10-20T00:00:00Z</td>');
  }
})(jQuery, domElement);
