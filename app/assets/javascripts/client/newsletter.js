var Newsletter = (function ($){
  return function Newsletter (args) {
    var options = {
      target: 'form#newsletter',
      url: '/fan/newsletter'
    };
    $.extend(options, args);
    function _signUpFail(error){
      $(options.target+' input[name="email"]').addClass("error");
    }
    function _signUpSuccess(response, textStatus, jqXHR) {
      var toHide = options.target+' input[name="email"],'+options.target+' button[type="submit"],form#newsletter span.shoutout';
      $(toHide).fadeTo("slow", 0, function () {
        $(toHide).hide();
        $(options.target+' span#thankyou').show("slow", function () {});
      });
    }
    function newsletterSignUp (){
      $(options.target).on("submit", function (e) {
        e.preventDefault();
        var data = $(this).serialize();
        $.post(options.url, data, _signUpSuccess).fail(_signUpFail);
      });
    }
    return {
      initNewsletter: newsletterSignUp
    };
  };
})(jQuery);