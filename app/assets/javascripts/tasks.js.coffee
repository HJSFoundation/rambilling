# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

jQuery ->
  projects = $('#task_project_id').html()
  console.log(projects)
  $('#client_dropdown_client_id').change ->
    client = $('#client_dropdown_client_id :selected').text()
    options = $(projects).filter("optgroup[label=#{client}]").html()
    console.log(options)
    if options
      $('#task_project_id').html(options)
    else
      $('#task_project_id').empty()
