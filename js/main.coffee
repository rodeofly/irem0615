open_dialog = (dialogue, element) ->
  dialogue.dialog "option",
    position :
      my: "center bottom"
      at: "center top"
      of: element
  dialogue.dialog( "open")
 
open_new_tab = (url) -> window.open(url, '_self').focus()
  

$ ->

  $( ".dialog" ).dialog
    autoOpen    : false
    dialogClass : "noTitleStuff"
    height      : "auto"
    width       : "auto"
    autoResize  : true  
  
  $.get "img/carte2.svg", (rawSvg) -> 
    $( "#map").append(document.importNode rawSvg.documentElement,true)
    
    anchor = "#crocodile, #poisson1, #poisson2, #tribunal, #tspan3925, #tspan3927, #tspan3929"
    
    $( anchor ).on "mouseenter", ->
      #open_dialog $("##{$(this).attr('id')}-dialog") , $("##{$(this).attr('id')}" )
      $(this).css( 'cursor', 'pointer' );
    
    $( anchor ).on "mouseleave", ->  
      $(this).css( 'cursor', 'default' );
      #$("##{$(this).attr('id')}-dialog").dialog("close")
    
    $( "#crocodile, #tspan3927").on "click", -> 
      open_new_tab("AlligatorEggs/index.html")
    
    $( "#poisson1, #poisson2, #tspan3925").on "click", -> 
      open_new_tab("Carroll/tag3.html")

    $( "#tribunal, #tspan3929").on "click", -> 
      open_new_tab("Carroll/LogicGame1.html")
     
  , "xml"
 
  
    
