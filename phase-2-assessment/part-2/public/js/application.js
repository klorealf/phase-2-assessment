$(document).ready(function() {
  $('#new-post-form').on('submit', function(event) {
    event.preventDefault();

    $.ajax({
      url: $(this).attr('action'),
      type: "POST",
      data: $(this).serialize()
    })

    .done(function(response) {
      $('#new-post-form')[0].reset()
      $('#post-list').prepend(response);
    });
  });

  $('#post-list').on('submit', '.new-post-like-form', function(event) {
    event.preventDefault();
    var that = this;

    $.ajax({
      url: $(this).attr('action'),
      type: "PUT"
    })

    .done(function(response) {
      $(that).prev().children().last().html(response + " likes")
    });
  });
});



