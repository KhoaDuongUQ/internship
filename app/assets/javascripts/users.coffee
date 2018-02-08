# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).on 'turbolinks:load', ->
  $(".nav-link").on 'click', ->
    $(".nav-link").removeClass "active"
    $(this).addClass "active"
  $('#profile').click()
