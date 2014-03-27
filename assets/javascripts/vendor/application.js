$(document).ready(function() {
  function setFreeSpacer() {
    $('li span.freespace').parent().parent().css({
      'background': '#9A9A9A'
    });
  }

  setFreeSpacer();
  $('ul.spaces li').bind('click', function(event) {
    $(this).css({
      'background': '#9A9A9A'
    });
  });
  $('#clearAll').bind('click', function(e) {
    $('ul.spaces li').css({
      'background': '#ffffff'
    })
    setFreeSpacer();
  })
});
