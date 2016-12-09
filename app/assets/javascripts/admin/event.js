var DateTimePicker = (function ($) {
  return function DateTimePicker (params) {
    var options = {
      target: '#datetimepicker'
    };
    $.extend(options, params);
    function initialize () {
      var $target = $(options.target);
      $target.datetimepicker({
        defaultDate: $target.attr('data-date')
      });
    }
    return {
      initialize: initialize
    };
  };
})(jQuery);
