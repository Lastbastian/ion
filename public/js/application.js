$(document).ready(function() {
  // This is called after the document has loaded in its entirety
  // This guarantees that any elements we bind to will exist on the page
  // when we try to bind to them

  // See: http://docs.jquery.com/Tutorials:Introducing_$(document).ready()

$("#new_possible_option").on('click', function() {
    $('.text_cell').show();

    });

    $(document).on('click', '.submit', function(event){
      event.preventDefault();
      $content = $('survey_choice[name=content]').val()
      $('.option_holder').append('<li> <span class = "option">' + $content + '<span> </li>');
  });


});
