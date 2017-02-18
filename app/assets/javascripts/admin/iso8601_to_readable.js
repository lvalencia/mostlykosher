var iso8601ToReadable = (function ($, _){
  return function iso8601ToReadable(params) {
    var options = {
      target: '.iso8601',
      raw: false
    };
    $.extend(options, params);
    function humanReadable(format) {
      $(options.target).each(function (index, el){
        var value = _.last(el.childNodes).nodeValue;
        var date = new Date(Date.parse(value.trim()));
        var formattedDate = moment(date).format(format);
        $(el).html(_html(formattedDate));
      });
    };
    function _html(date) {
      var result = '';
      if (!options.raw) {
        result += '<span>Date: </span>';
      }
      result += date;
      return result;
    };
    return {
      format: humanReadable
    };
  };
})(jQuery, _);