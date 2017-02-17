var ScrollToLinks = (function ($){
  return function ScrollToLinks (params) {
    var options = {
      offset: 40,
      delay: 1e3
    };
    $.extend(options, params);

    // Interface
    function attachListener(){
      $("a[href^='#']", this).on("click", _scrollTo);
    }

    // Hoisted
    function _scrollTo(e) {
      e.preventDefault();
      var target = $($(this).attr("href"));
      $('html, body').animate({
        scrollTop: target.offset().top-options.offset
      }, options.delay);
    }

    // Inheritance
    return {
      applyBehavior: attachListener
    };
  };
})(jQuery);