$(document).ready(function () {
   $("abbr.timeago").timeago();
   $('#map_canvas').gmap();
   $("#gallery-preview").owlCarousel({
      autoPlay: 3000, //Set AutoPlay to 3 seconds
      autoHeight: true,
      items: 3,
  });
});
