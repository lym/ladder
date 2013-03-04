// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require jquery-1.8.2
//= require jquery-ui-1.9.0.custom.min
//= require jquery-ui-tabs-rotate
//= require_tree .

$('document').ready(function() {
  
  // display validation errors for the "request invitation" form
  if ($('.alert-error').length > 0) {
    $("#request-invite").modal('toggle');
  }
  
  // use AJAX to submit the "request invitation" form
  $('#invitation_button').live('click', function() {
    var user_name = $('form #user_name').val();
    var user_email = $('form #user_email').val()
    var user_password = $('form #user_password').val()
    var user_password_confirmation = $('form #user_password_confirmation').val()
    var dataString = 'user[name]='+ name + 'user[email]=' + email + 'user[password]=' + password + 'user[password_confirmation]=' + password_confirmation;
    $.ajax({
      type: "POST",
      url: "/users",
      data: dataString,
      success: function(data) {
        $('#request-invite').html(data);
        loadSocial();
      }
    });
    return false;
  });

})
