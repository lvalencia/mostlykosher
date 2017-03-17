var DomInserter = (function ($) {
  return function PressDomInserter (params) {
    var options = {
      target: 'body'
    };
    $.extend(options, params);
    function handler(ø, response) {
      debugger;
      $(options.target).append(_responseToDomObject(response));
    }
    function _responseToDomObject(response) {
      return $(response.html);
    }
    return {
      callback: handler
    };
  };
})(jQuery);
