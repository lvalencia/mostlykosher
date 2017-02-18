var Carousel = (function ($) {
  return function Carousel (args) {
    var options = {
      target: '.carousel',
      autoplay: true,
      autoplayTimeout: 3000,
      autoplayHoverPause: true,
      autoHeight: true,
      responsiveClass: false,
      loop: true,
      dots: true,
      responsive: {
        0: {
          items: 1
        },
        768: {
          items: 3
        },
        1200:{
          items: 5
        }
      }
    };
    $.extend(options, args);
    function startCarousel(){
      $(options.target).owlCarousel({
        autoplay: true,
        autoplayTimeout: 3000,
        autoplayHoverPause: true,
        items: options.items,
        loops: options.loop,
        dots: options.dots,
        responsiveClass: options.responsiveClass,
        responsive: options.responsive
      });
    }
    return {
      initialize: startCarousel
    };
  };
})(jQuery);