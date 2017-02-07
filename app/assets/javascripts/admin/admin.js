(function admin($) {
  $(document).ready(function adminReady() {
    DateTimePicker({
      target: '#datetimepicker'
    }).initialize();
    Form({
      target: 'form.edit_event',
      hooks: [DateTimeHook()]
    }).listen();
  });
})(jQuery);
// Set Google Maps Callback
window.MostlyKosher = window.MostlyKosher || {}
window.MostlyKosher.googleCallback = EventMap({
  raiseAlert: true
}).googleCallback;
