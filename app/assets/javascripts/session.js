//= require jquery
//= require jquery_ujs
//= require jquery-migrate-1.1.1.min
//= require jquery-ui-1.10.3.min
//= require modernizr.min
//= require bootstrap.min
//= require jquery.cookie
//= require custom

jQuery(document).ready(function(){
  jQuery('#login').submit(function(){
    var u = jQuery('#username').val();
    var p = jQuery('#password').val();
    if(u == '' && p == '') {
      jQuery('.login-alert').fadeIn();
      return false;
    }
  });
});
