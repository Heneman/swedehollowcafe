//= require masonry.pkgd.min.js
//= require jquery.fancybox.pack.js
//= require jquery.fancybox-buttons.js
//= require jquery.mousewheel-3.0.6.pack.js


// Use (window).on('load') instead of 'ready'
// so images have time to load before
// Masonry touches them

jQuery(window).on("load", function(){
  var $ = jQuery;
  
  $(".masonry").masonry({
    itemSelector: ".image-box"
  });

  $(".fancybox").fancybox({
    helpers: {
      overlay: {
        css: {
          'background': "rgba( 50, 50, 50, 0.70"
        }
      }
    }
  });
})