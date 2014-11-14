$('#biolaHeader .biola-header-more > button').on('click', function(){
  $(this).parent().toggleClass('active');
  $('#biolaHeader').toggleClass('active');
  $('#biolaHeader .biola-header-nav').toggleClass('active');
});
