$(document).ready(function(){

  function showWidget() {
    $('#widget' + $(this)[0].id).removeClass('hidden');
  }

  function hideWidget() {
    $('#widget' + $(this)[0].id).addClass('hidden');
  }

  var configHover = {
    interval: 1000,
    timeout: 1000,
    over: showWidget,
    out: hideWidget
  };

  $("div.widget_observer").hoverIntent( configHover );

});
