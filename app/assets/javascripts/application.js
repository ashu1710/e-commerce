// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require popper
//= require jquery
//= require bootstrap
//= require_tree .




$(document).ready(function(){

    $('.container .nav-tabs .nav-link').on('click',function(ev){
        var tablist =  $(this).text();
        $('.active').removeClass('active');
        
        $('.tab-content #'+tablist).addClass('active');
    });

    $("#edit_user").submit(function(){
        var isFormValid = true;
        if ($('#user_current_password').val().length == 0)
        {   
            $('p').addClass('show-text');
            isFormValid = false;
        }
        return isFormValid;
    });


});