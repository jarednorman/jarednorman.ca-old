$ ->
  $window = $ window
  $elems = $('.window-height')
  updateHeights = -> $elems.height $window.height()
  updateHeights()
  $window.on 'resize', updateHeights
