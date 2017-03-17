(function admin($) {
  // Dropzone Configuration
  Dropzone.autoDiscover = false;
  // Set Google Maps Callback
  window.MostlyKosher = window.MostlyKosher || {};
  window.MostlyKosher.googleCallback = GoogleMapsHandler({ raiseAlert: true }).callback;
  // Bindings
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
    PressUpload({
      target: 'form.dropzone',
      param: 'press_entry[image]',
      successCallback: DomInserter({ target: 'table tbody' }).callback
    }).initialize();
  });
})(jQuery);

