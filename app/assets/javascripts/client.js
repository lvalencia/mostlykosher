//On Load Bindings
$(document).ready(function () {
   $("abbr.timeago").timeago();
   $('#map_canvas').gmap();
   $("#gallery-preview").owlCarousel({
      autoPlay: 3000, //Set AutoPlay to 3 seconds
      autoHeight: true,
      items: 3,
  });
});
//Form Submission Override
$(document).on("submit", "form#newsletter", function (e) {
   e.preventDefault();
   target = "form#newsletter";
   $.ajax({
      type:"POST",
      url:"/fan/newsletter",
      data: { email: $(this).find('input[name="email"]').val() },
      success:function (response) {
         if (response.status == "success") {
            $(target+' input[name="email"],'+target+' button[type="submit"],form#newsletter span.shoutout').fadeTo("slow", 0, function () {
               $(target+' span#thankyou').show("slow", function () {});
            });
         }
         else {
             $(target+' input[name="email"]').addClass("error");
         }
      },
      error:function (error) {
      }
   });
});
//Smooth Scroll To
$(document).on("click", "nav ul li a[href^='#']", function (e) {
   header_offset = 40;
   delay = 1200;
   e.preventDefault();
   var hash = this.hash;
   $('html, body').animate({
      scrollTop: $(this.hash).offset().top-header_offset
   }, delay, function(){
      window.location.hash = hash;
   });
});
