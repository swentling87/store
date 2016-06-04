var ready;

ready = function() {
  $(".main-header").hide().fadeIn(2500)
  $(".tabs").mouseenter(function() {
    $(this).addClass("tabs-enter")});
  $(".tabs").mouseleave(function() {
    $(this).removeClass("tabs-enter")});
  $(".links").mouseenter(function() {
    $(this).addClass("links-big")});
  $(".links").mouseleave(function() {
    $(this).removeClass("links-big")});
  $(document).ready(function() {
    $(".about").hide().slideDown(2500)
  });
};

$(document).ready(ready);
$(document).on('page:load', ready);
