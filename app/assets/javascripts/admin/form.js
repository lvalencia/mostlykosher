var Form = (function ($){
  return function Form (params) {
    var options = {
      target: 'form',
      hooks: []
    };
    $.extend(options, params);
    var ø = Object.create( null );

    // Public
    function listen () {
      var $target = $(options.target);
      $target.on("submit", _submitHandler);
    };

    // Hoisted

    function _submitHandler(e) {
      e.preventDefault();
      options.hooks.forEach(function (hook) {
        hook.applyHook.call(this);
      }.bind(this));
      debugger;
      var url = this.getAttribute('action');
      var data = $(this).serialize();
      $.post(url, data, ø);
    };

    // Interface
    return {
      listen: listen
    };
  };
})(jQuery);