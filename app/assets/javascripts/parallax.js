/* Dynamic Resize  */
$(document).ready(function () {
});
$(document).ready(function () {
   $window = $(window);

   $('[data-parallax="back"]').each(function () {
      var $self = $(this);
      function imageParallax() {
         var offsetCoords = $self.offset();
         var topOffset = offsetCoords.top;
         if (($window.scrollTop() + $window.height()) > (topOffset) && ((
            topOffset + $self.height()) > $window.scrollTop())) {
            var yPos = -(($window.scrollTop() - topOffset) / 5);
            $self.find('[data-parallax=wrapper]').first().css({
                'left':0,
                'top':yPos+'px'
            });
         };
      }
      $('div.parallax.row').scroll(function () {
         imageParallax();
      });
      $window.resize(function () {
         imageParallax();
      });
   });

});
