(function ($){
  // Bindings
  ready = function () {
    // Carousels
    Carousel({
      target: '#gallery-preview'
    }).initCarousel();
    // Newsletter Signup
    Newsletter({
      target: 'form#newsletter'
    }).initNewsletter();
  };
  // Navigation Scroll
  $(document).on("click", "nav ul li a[href^='#']", function(e){
    e.preventDefault();
    var header_offset = 40;
    var delay = 1e3;
    var target = $($(this).attr("href"));
    $("html, body").animate({
      scrollTop:target.offset().top-header_offset
    }, delay);
  });
  // Ready Trigger
  $(document).on('ready page:load turbolinks:load', ready);
  // Set Google Maps Callback
  window.MostlyKosher = window.MostlyKosher || {}
  window.MostlyKosher.googleCallback = EventMap().googleCallback;

})(jQuery);

