$(document).ready(function()
{
  $(".menu-link").click(function()
  {
    $(".menu-link").not( $(this) ).each(function()
    {
      $( "#" + $(this).attr("data-meal") + "-menu" ).fadeOut().addClass("hidden");
    });

    $( "#" + $(this).attr("data-meal") + "-menu" ).fadeIn().removeClass("hidden");
  });
});