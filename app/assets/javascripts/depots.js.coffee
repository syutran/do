# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
jQuery ->
  $('#depot_typies_single').click ->
    $('#subform').html("<%= escape_javascript(render(:partial => 'form_single', :locals => {:f => f}) %> ")

  $('#depot_typies_much').click ->
    $('#subform').html("<%= escape_javascript( render(:partial => 'form_much', :locals =>{:f => f}) %> ")

  $("#depot_typies_judge").click ->
    $('#subform').html("<%= escape_javascript render(:partial => 'form_judge', :locals => {:f => f}) %>")
