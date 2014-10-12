$(document).ready(function () {
  var uagent = navigator.userAgent.toLowerCase();
  if (! (uagent.search("iphone") > -1))
  {
     //Sticky Navigation
     var stickyNavTop = $('.top-nav-bar').offset().top;
     var stickyNav = function(){
        var scrollTop = $(window).scrollTop();
        if (scrollTop > stickyNavTop) {
           $('.top-nav-bar').addClass('sticky-nav');
        } 
        else 
        {
           $('.top-nav-bar').removeClass('sticky-nav');
        }
     };
     stickyNav();
     $(window).scroll(function() {
        stickyNav();
     });
  }
});