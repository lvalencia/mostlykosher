$(document).ready(function () {
  var uagent = navigator.userAgent.toLowerCase();
  if (! (uagent.search("iphone") > -1) && $('.top-nav-bar').length > 0)
  {
     //Sticky Navigation
     var stickyNavTop = $('.top-nav-bar').offset().top;
     var stickyNav = function(){
        if ($(window).width() >= 768) {
           var scrollTop = $(window).scrollTop();
           if (scrollTop > stickyNavTop) {
              $('.top-nav-bar').addClass('sticky-nav');
           } 
           else 
           {
              $('.top-nav-bar').removeClass('sticky-nav');
           }
        }
     };
     stickyNav();
     $(window).scroll(function() {
        stickyNav();
     });
  }
});
