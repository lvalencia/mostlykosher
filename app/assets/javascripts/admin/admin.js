(function admin($) {
  $(document).ready(function adminReady() {
    DateTimePicker({
      target: '#datetimepicker'
    }).initialize();
  });
})(jQuery);
// Set Google Maps Callback
window.MostlyKosher = window.MostlyKosher || {}
window.MostlyKosher.googleCallback = EventMap({
  raiseAlert: true
}).googleCallback;
