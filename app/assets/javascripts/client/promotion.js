var Promotion = (function ($) {
  return function Promotion(params) {
    var options = {
      target: '#promo .modal',
      close: '#promo .close',
      after: '#music',
      delay: 1e3,
      offset: 40
    };
    $.extend(options, params);
    function show() {
      $(options.target).modal('show');
      $(options.close).on('click', function () {
        $('html, body').animate({
          scrollTop: options.after.offset().top-options.offset
        }, options.delay);
      });
    }
    return {
      show: show
    };
  }
})(jQuery);
