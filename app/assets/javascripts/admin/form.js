var Form = (function ($){
  return function Form(params) {
    var options = {
      target: 'form',
      hooks: []
    };
    $.extend(options, params);

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
      var url = this.getAttribute('action');
      var data = $(this).serialize();
      $.post(url, data, _successHandler, 'json');
    };

    function _successHandler(response) {
      if (response.hasOwnProperty('show')) {
        location.href = response.show;
      }
    };

    // Interface
    return {
      listen: listen
    };
  };
})(jQuery);