ready = function () {
   $window = $(window);
   $('[data-parallax="back"]').css('height', $(window).height()); 
   // For each element that has a data-type attribute
   $('[data-type="background"]').each(function () {
      var $self = $(this);
      // Store function
      function imageParallax() {
         var offsetCoords = $self.offset();
         var topOffset = offsetCoords.top;
         // If this section is in view
         if (($window.scrollTop() + $window.height()) > (topOffset) && ((
            topOffset + $self.height()) > $window.scrollTop())) {
            // Scroll speed and Y position
            var yPos = -(($window.scrollTop() - topOffset) / 5);
            // Final background position
            var coords = '50% ' + yPos + 'px';
            if ($self.attr('id') == "about"){   
                coords = '50% '+(yPos+$self.height()/4)+'px';
            }
            // Apply the CSS
            $self.css({
               backgroundPosition: coords
            });
         };
      }

      // On Scroll
      $window.scroll(function () {
         imageParallax();
      });
      // On Resize
      $window.resize(function () {
         imageParallax();
      });
   });
}

$(window).on('resize', ready);
$(document).ready(ready);
