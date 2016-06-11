var ready;

ready = function() {
  $(".main-header").hide().fadeIn(2500)

  $(".side-bar-link").mouseenter(function() {
    $(this).addClass("side-bar-link-big")});
  $(".side-bar-link").mouseleave(function() {
    $(this).removeClass("side-bar-link-big")});

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

  $(".thumbnail").mouseenter(function() {
    $(this).addClass("thumbnail-shadow")});
  $(".thumbnail").mouseleave(function() {
    $(this).removeClass("thumbnail-shadow")});

  $(".close").click(function() {
    $(".flash").hide()});

  $(".add").click(function() {
    $(".add").hide()
    $(".num-add").hide()});

  $(".add-review").click(function(e) {
  $(".review-form").show();
    e.preventDefault();});

};

$(document).ready(ready);
$(document).on('page:load', ready);
