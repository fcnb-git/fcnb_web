# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $(".skill_category_selection").on "change", ->
	$.ajax
	  url: "/user_work_skills/get_skill_inventories"
	  type: "GET"
	  dataType: "script"
	  data:
	    skill_category_id: $('.skill_category_selection option:selected').val()