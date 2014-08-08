$(document).ready(function(){

  $("#bakery-link").click(function(){
    $("#bakery").removeClass("hidden");
    $("#breakfast, #lunch, #beverages").each(function(){
      $(this).addClass("hidden");
    });
  });

  $("#breakfast-link").click(function(){
    $("#breakfast").removeClass("hidden");
    $("#bakery, #lunch, #beverages").each(function(){
      $(this).addClass("hidden");
    });
  });

  $("#lunch-link").click(function(){
    $("#lunch").removeClass("hidden");
    $("#bakery, #breakfast, #beverages").each(function(){
      $(this).addClass("hidden");
    });
  });

  $("#beverages-link").click(function(){
    $("#beverages").removeClass("hidden");
    $("#bakery, #breakfast, #lunch").each(function(){
      $(this).addClass("hidden");
    });
  });

});