$(document).ready(function(){

  $(".menu-link").click(function(){
    $(".menu-link").not( $(this) ).each(function(){
      $( "#" + $(this).text().toLowerCase() + "-menu" ).fadeOut();
    });
    
    $( "#" + $(this).text().toLowerCase() + "-menu" ).fadeIn();
  });

});