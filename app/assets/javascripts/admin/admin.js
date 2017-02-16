(function admin($) {
  // Set Google Maps Callback
  window.MostlyKosher = window.MostlyKosher || {};
  window.MostlyKosher.googleCallback = EventMap({ raiseAlert: true }).googleCallback;

  $(document).ready(function adminReady() {
    DateTimePicker({ target: '#datetimepicker' }).initialize();
    Form({
      target: 'form.edit_event',
      hooks: [DateTimeHook()]
    }).listen();
    iso8601ToReadable({ target: '.date.iso8601' }).format('MMM Do YYYY');
    iso8601ToReadable({
      target: '.preview.iso8601',
      raw: true
    }).format('YYYY MMM D');
  });
})(jQuery);

