$(document).ready(function(){

  function showWidget() {
    selectedWidget = parseInt($(this)[0].id.substr(1));
    if ($('#widget' + $(this)[0].id).html() == '') { 
      evalScript(widgetScripts[selectedWidget]);
    }

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

  $("div.widget_observer a").click(function() {
    return false;
  });

});

function evalScript(scriptStr) {
  var anonymous_div = $('<div/>');
  anonymous_div.html(decodeURIComponent(scriptStr));

  anonymous_div.find('script').each(function(el) {
    var script = document.createElement('script');
    script.src = $(this).attr('src');
    document.body.appendChild(script);
    this.parentNode.removeChild(this);
    debugger;
  });
}

var selectedWidget = '';

document.write = (function () {
  for (var i = 0; i < arguments.length; i++) {
    $('#widget_' + selectedWidget).append(arguments[i]);
  }
});
