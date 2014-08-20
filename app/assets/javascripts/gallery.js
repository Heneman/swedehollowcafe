//= require masonry.pkgd.min.js
//= require jquery.fancybox.pack.js
//= require jquery.fancybox-buttons.js
//= require jquery.mousewheel-3.0.6.pack.js
//= require instafeed.min.js


$(document).ready(function(){

  // var before = [];
  // var after = [];
  // var diff = [];

  // var feed = new Instafeed({
  //   get: "tagged",
  //   tagName: "swedehollow",
  //   clientId: "f929602ce1cf479c9a287c72e9677304",
  //   max: 20,
  //   links: false,
  //   resolution: "standard_resolution",
  //   target: "masonry",
  //   sortBy: "most-recent",
  //   template: '<div class="image-box col-sm-4 col-md-4 col-lg-4">' +
  //             '<a class="fancybox" href="{{image}}" rel="gallery">' +
  //             '<img class="img-responsive img-thumbnail" src="{{image}}">' +
  //             '</a>' +
  //             '</div>',
  //   after: function(){
  //     if (!this.hasNext()) {
  //       $("#load-more").setAttribute('disabled', 'disabled');
  //     }

  //     after = $(".image-box");

  //     diff = $(after).not(before).get();

  //     $(".masonry").masonry("appended", diff);

  //     $(".masonry").masonry();

  //   }
  // });

  $(".fancybox").fancybox({
    helpers: {
      overlay: {
        css: {
          'background': "rgba( 50, 50, 50, 0.70 )"
        }
      }
    }
  });

  // $("#load-more").on("click", function(){
  //   before = $(".image-box");

  //   feed.next();

  //   $(".masonry").masonry();
  // });

  // feed.run();

});

// Use (window).on('load') instead of 'ready'
// so images have time to load before
// Masonry touches them

$(window).on("load", function(){
  $(".masonry").masonry({
    itemSelector: ".image-box"
  });
});

