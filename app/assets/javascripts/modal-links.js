var loginModal = "login-modal";
var signupModal = "sign-up-modal";
$(document).ready(function () {
    $('a').click(function () {
       id = $(this).attr('id');
       if (id == loginModal)
       {
          $('#sign-up').modal('hide');
          $('#login').modal('toggle');
       }
       else if (id == signupModal)
       {
          $('#login').modal('hide');
          $('#sign-up').modal('toggle');
       }
    });
});
