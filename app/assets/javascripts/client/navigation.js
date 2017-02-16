var Navigation = (function ($) {
  return function Navigation (params) {
    var options = {
      target: 'nav',
      behaviors: []
    };
    $.extend(options, params);

    function addListeners () {
      options.behaviors.forEach(function(behavior){
        behavior.applyBehavior.call($(options.target));
      });
    }

    return {
      listen: addListeners
    }
  };
})(jQuery);