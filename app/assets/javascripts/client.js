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
$(document).on("click", "nav ul li a[href^='#']", function(e){
   e.preventDefault();
   header_offset = 52;
   delay = 1e3;
   var target = $($(this).attr("href"));
   $("html, body").animate({
      scrollTop:target.offset().top-header_offset
   }, delay);
});
