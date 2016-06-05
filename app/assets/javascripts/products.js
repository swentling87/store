var ready;

ready = function() {
  $(".main-header").hide().fadeIn(2500)
  $(".side-bar-link").hover(function() {
    $(this).toggleClass("side-bar-link-big")});
  $(".thumbnail").hover(function() {
    $(this).toggleClass("thumbnail-shadow")
  })
};

$(document).ready(ready);
$(document).on('page:load', ready);
