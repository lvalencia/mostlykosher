var PressUpload = (function ($) {
  return function PressUpload(params) {
    var options = {
      target: '.dropzone',
      param: "image[image]",
      acceptedFiles: "image/*",
      uploadMultiple: false,
      successCallback: null
    };

    $.extend(options, params);

    function initialize() {
      $(options.target).dropzone({
        paramName: options.param,
        acceptedFiles: options.acceptedFiles,
        uploadMultiple: options.uploadMultiple,
        success: options.successCallback
      });
    }

    return {
      initialize: initialize
    };
  };
})(jQuery);
