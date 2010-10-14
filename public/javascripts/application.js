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

document.write = (function () {
  var content = "";
  for (var i = 0; i < arguments.length; i++) {
    //console.log(arguments[i]);
    content += arguments[i];
    //$('div#thawte').append(arguments[i]);
  }
  console.log(content);
  $(this).parentNode.html(content);
});
