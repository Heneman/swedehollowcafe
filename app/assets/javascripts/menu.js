$(document).ready(function(){

  // TODO: Find better way to do this

  $("#bakery-link").click(function(){
    $("#bakery").removeClass("hidden");
    $("#breakfast").addClass("hidden");
    $("#lunch").addClass("hidden");
    $("#beverages").addClass("hidden");
  });

  $("#breakfast-link").click(function(){
    $("#bakery").addClass("hidden");
    $("#breakfast").removeClass("hidden");
    $("#lunch").addClass("hidden");
    $("#beverages").addClass("hidden");
  });

  $("#lunch-link").click(function(){
    $("#bakery").addClass("hidden");
    $("#breakfast").addClass("hidden");
    $("#lunch").removeClass("hidden");
    $("#beverages").addClass("hidden");
  });

  $("#beverages-link").click(function(){
    $("#bakery").addClass("hidden");
    $("#breakfast").addClass("hidden");
    $("#lunch").addClass("hidden");
    $("#beverages").removeClass("hidden");
  });

});