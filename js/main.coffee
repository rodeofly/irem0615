open_dialog = (dialogue, element) ->
  dialogue.dialog "option",
    position :
      my: "center bottom"
      at: "center top"
      of: element
  dialogue.dialog( "open")
 
open_new_tab = (url) -> window.open(url, '_blank').focus()
  

$ ->

  $( ".dialog" ).dialog
    autoOpen    : false
    dialogClass : "noTitleStuff"
    width       : "auto"
    minHeight   : 0
    autoResize  : true  
  
  $.get "img/carte2.svg", (rawSvg) -> 
    $( "#map").append(document.importNode rawSvg.documentElement,true)
    
    $( "#crocodile, #poisson1, #poisson2, #tribunal").on "mouseenter", -> open_dialog $("##{$(this).attr('id')}-dialog") , $("##{$(this).attr('id')}" )
    $( "#crocodile, #poisson1, #poisson2, #tribunal").on "mouseleave", ->  $("##{$(this).attr('id')}-dialog").dialog("close")
    
    
    
    $( "#poisson1").on "click", -> open_new_tab("http://www.google.fr")
    $( "#poisson2").on "click", -> open_new_tab("http://www.google.fr")
    $( "#tribunal").on "click", -> open_new_tab("http://www.google.fr")
    
    $( "#crocodile").on "click", -> open_new_tab("http://www.google.fr")
    $( "#poisson1").on "click", -> open_new_tab("http://www.google.fr")
    $( "#poisson2").on "click", -> open_new_tab("http://www.google.fr")
    $( "#tribunal").on "click", -> open_new_tab("http://www.google.fr")
     
  , "xml"
 
  
    
