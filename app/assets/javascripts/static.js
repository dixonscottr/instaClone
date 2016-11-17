$( document ).ready(function() {
    $('#login-btn').click(function(event) {
      event.preventDefault();
      var route = $(this).find('a').attr('href');
      $.ajax({
        url: route,
        method: 'GET'
      }).done(function(response) {
        $('.login-space').prepend(response);
      })
    })

  $('.login-space').on('submit', '.user-login-form', function(event) {
    event.preventDefault();
    var $form = $(this)
    var data = $form.serialize();
    var route = $form.attr('action');
    var method = $form.attr('method');
    $.ajax({
      url: route,
      type: method,
      data: data
    }).done(function(response) {
      alert(response);
    })
  })

});
