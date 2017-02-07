var DateTimeHook = (function ($) {
  return function DateTimeHook(params) {
    var options = {
    };
    $.extend(options, params);
    function dateTimeToUTC(){
      var momentDate = $('#datetimepicker', this).datetimepicker('viewDate');
      var utcDate = momentDate.toDate().toISOString();
      this.elements['event_date'].value = utcDate;
    }
    return  {
      applyHook: dateTimeToUTC
    }
  }
})(jQuery);