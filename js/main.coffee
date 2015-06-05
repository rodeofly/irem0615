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
  
  $.get "img/carte4.svg", (rawSvg) -> 
    $( "#map").append(document.importNode rawSvg.documentElement,true)
    
    anchor = "#crocodile, #poisson1, #poisson2, #tribunal, #text3913, #text4897, #text4901, #text4905, #text3775, #text3785, #text3779"
    
    $( anchor ).on "mouseenter", ->
      #open_dialog $("##{$(this).attr('id')}-dialog") , $("##{$(this).attr('id')}" )
      $(this).css( 'cursor', 'pointer' );
    
    $( anchor ).on "mouseleave", ->  
      $(this).css( 'cursor', 'default' );
      #$("##{$(this).attr('id')}-dialog").dialog("close")
    
    
    $( "#text3913").on "click", -> 
      open_new_tab("sophus.html")
      
    $( "#poisson1, #poisson2, #text4897, #text3779").on "click", -> 
      open_new_tab("Carroll/tag3.html")
      
    $( "#crocodile, #text4901, #text3775").on "click", -> 
      open_new_tab("AlligatorEggs/index.html")
    
   

    $( "#tribunal, #text4905, #text3785").on "click", -> 
      open_new_tab("Carroll/LogicGame5.html")
     
  , "xml"
 
  
    
