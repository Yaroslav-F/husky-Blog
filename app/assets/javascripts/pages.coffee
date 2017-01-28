$(document).ready ->
  $(".masthead").visibility
    once: false
    onBottomPassed: ->
      $(".fixed.menu").transition "fade in"

    onBottomPassedReverse: ->
      $(".fixed.menu").transition "fade out"

  $(".ui.sidebar").sidebar "attach events", ".toc.item"

  $(document).on "click", ".message.closable .close.icon", ->
    $('.message.closable').fadeOut("slow")
    false
