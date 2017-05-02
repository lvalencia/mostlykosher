(function ($) {
  // Set Google Maps Callback
  window.MostlyKosher = window.MostlyKosher || {};
  window.MostlyKosher.googleCallback = GoogleMapsHandler().callback;
  // Bindings
  function ready () {
    Carousel({ target: '#gallery-preview' }).initialize();
    Newsletter({ target: 'form#newsletter' }).initialize();
    Navigation({
      target: 'nav',
      behaviors: [ScrollToLinks({
        offset: 40,
        delay: 1e3
      })]
    }).listen();
  }
  // Ready Trigger
  $(document).ready(Promotion({ target: "#tour-modal" }).show);
  $(document).on('ready page:load turbolinks:load', ready);
})(jQuery);

