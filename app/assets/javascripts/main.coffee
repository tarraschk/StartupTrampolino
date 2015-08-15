ready = ->
  $('body').scrollspy({ target: '#navbar-principal' })
  offsetValue = 80;
  $('body').data()["bs.scrollspy"].options.offset = offsetValue;
  #force scrollspy to recalculate the offsets to your targets
  $('body').data()["bs.scrollspy"].process();
  $('.navbar li a').click (event) ->
    target = $(this).attr('href');
    if target[0] == "#"
      event.preventDefault();
      $('html, body').animate({
            scrollTop: $(target).offset().top-offsetValue;
      }, 500);

  $(".img-icon-manifesto").hover ->
      $("#propositions-content > .center-wrapper-vertical").addClass("hidden")
      $("#propositions-content > .content").removeClass("hidden")
      $("#propositions-content > .content").html("<h3>"+this.title+"</h3><p>Cliquez sur l'hexagone<br/>pour accéder au contenu de la proposition.</p>")
    , ->
      $("#propositions-content > .center-wrapper-vertical").removeClass("hidden")
      $("#propositions-content > .content").addClass("hidden")


$(document).ready(ready)
$(document).on('page:load', ready)
