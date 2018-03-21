
setImageHandler = ->
  $('.image-row select').on('change', setImageSize)
  $('#setAllSizes').on('change', setImageSizes)
  $('.copy').on('click', copyToClipboard)
  $('input[name="static"]').on('change', changeImageSearch)

changeImageSearch = (event) ->
  isStatic = $('input[name="static"]:checked').val()
  window.location.search = "static=" + isStatic

textToClipboard = (text) ->
  dummy = document.createElement("textarea")
  document.body.appendChild(dummy)
  dummy.value = text
  dummy.select()
  document.execCommand("copy")
  document.body.removeChild(dummy)

copyToClipboard = (event) ->
  html = $(event.target).attr('data-html').trim()
  textToClipboard(html)
  alert("Image info copied to the clipboard, you can paste it into a static page. This is what was copied:\n\n" + html)

setImageSize = (event) ->
  $parent = $(event.target).parents('.image-row')
  $parent.find('.size').hide(0)
  $parent.find('.size.' + event.target.value).show(0)

setImageSizes = (event) ->
  $('.image-row select').val(event.target.value)
  $parent = $('.image-row')
  $parent.find('.size').hide(0)
  $parent.find('.size.' + event.target.value).show(0)

$(document).ready( setImageHandler )

