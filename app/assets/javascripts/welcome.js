var ready;

ready = function() {
  $(".main-header").hide().fadeIn(2500)
  $(".side-bar-link").hover(function() {
    $(this).toggleClass("side-bar-link-big")});
  $(".tabs").mouseenter(function() {
    $(this).addClass("tabs-enter")});
  $(".tabs").mouseleave(function() {
    $(this).removeClass("tabs-enter")});
  $(".links").mouseenter(function() {
    $(this).addClass("links-big")});
  $(".links").mouseleave(function() {
    $(this).removeClass("links-big")});
  $(document).ready(function() {
    $(".about").hide().slideDown(1000)});
  $(".thumbnail").hover(function() {
    $(this).toggleClass("thumbnail-shadow")
  })
};

$(document).ready(ready);
$(document).on('page:load', ready);
