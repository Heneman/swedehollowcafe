//= require masonry.pkgd.min.js
//= require jquery.fancybox.pack.js
//= require jquery.fancybox-buttons.js
//= require jquery.mousewheel-3.0.6.pack.js
//= require instafeed.min.js


// Use (window).on('load') instead of 'ready'
// so images have time to load before
// Masonry touches them

$(window).on("load", function(){

  var feed = new Instafeed({
    get: "tagged",
    tagName: "swedehollow",
    clientId: "f929602ce1cf479c9a287c72e9677304",
    max: 20,
    links: false,
    resolution: "standard_resolution",
    target: "masonry",
    sortBy: "most-recent",
    template: '<div class="image-box col-sm-4 col-md-4 col-lg-4">' +
              '<a class="fancybox" rel="gallery">' +
              '<img class="img-responsive img-thumbnail" src="{{image}}">' +
              '</a>' +
              '</div>',
    after: function(){
      $(".masonry").masonry({
        itemSelector: ".image-box",
        sortBy: "random"
      });
    }
  });

  feed.run();

  $(".fancybox").fancybox({
    helpers: {
      overlay: {
        css: {
          'background': "rgba( 50, 50, 50, 0.70 )"
        }
      }
    }
  });
})