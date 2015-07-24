$(document).ready(function() {

  $('.follow-link').on('click', function(event){
      event.preventDefault();

      var followersCount = $(this).siblings('.follow_count');

      $.post(this.href, function(response){
        followersCount.text(response.new_followers_count);
    })
  })
})
