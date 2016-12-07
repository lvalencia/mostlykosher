var Promotion = (function ($) {
  return function Promotion(params) {
    var options = {
      target: '#promo .modal',
      close: '#promo .close',
      after: '#music'
    };
    $.extend(options, params);
    function show() {
      $(options.target).modal('show');
      $(options.close).on('click', function () {
        var delay = 1e3;
        $('html, body').animate({
          scrollTop: options.after.offset().top-header_offset
        }, delay);
      });
    }
    return {
      show: show
    };
  }
})(jQuery)
