var DateTimePicker = (function ($) {
  return function DateTimePicker (params) {
    var options = {
      target: '#datetimepicker',
    };
    $.extend(options, params);
    function initialize () {
      var $target = $(options.target);
      $target.datetimepicker({
        date: $target.attr('data-datetime')
      });
    }
    return {
      initialize: initialize
    };
  };
})(jQuery);
