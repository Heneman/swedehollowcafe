$(document).ready(function(){
  $(".menu-link").click(function(){

    $(".menu-link").not( $(this) ).each(function(){
      $( "#" + $(this).text().toLowerCase() + "-menu" ).fadeOut().addClass("hidden");
    });
    $( "#" + $(this).text().toLowerCase() + "-menu" ).fadeIn().removeClass("hidden");
    
  });

});