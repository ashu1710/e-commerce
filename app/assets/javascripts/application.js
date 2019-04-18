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

function check_validation()
{
    $('.fortextbox p').removeClass('show-text');
    $('.dropdownlist p').removeClass('show-text');
    
    var isFormValid = true;
    var e = document.getElementById("sub_category_category_id");
    var optionSelIndex = e.options[e.selectedIndex].value;

    if ($('#sub_category_name').val().length == 0)
    {   
        $('.fortextbox p').addClass('show-text');
        isFormValid = false;
    }

    if(optionSelIndex == 0)
    {
        $('.dropdownlist p').addClass('show-text');
        isFormValid = false;
    }
    // alert(optionSelIndex);
    return isFormValid;
}


function check_register()
{
    $('.fortextbox p').removeClass('show-text');
    var isFormValid = true;
    var textBox =  $.trim( $('input[type=text]').val() )
    if (textBox == "") {
        $('.fortextbox p').addClass('show-text');
        isFormValid = false;
    }
    return isFormValid;
}

$(document).ready(function(){



    $("#product_description").change(function(){
        var category = $(this).val();
        $.ajax({
            type: "GET",
            url: "/products",
            dataType: "script",
            data: { category_id: category },
            success: function(response){
                console.log(response);
            } 
        })
    });
  

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
    
    
    $("#new_category").submit(function(){
        
        var isFormValid = true;
        if ($('#category_name').val().length == 0)
        {   
            $('p').addClass('show-text');
            isFormValid = false;
        }
       
        if(isFormValid == true)
        {
            $('p').removeClass('show-text');
        }
        return isFormValid;
    });


    

    $("#new_sub_category").submit(function(){
        
    });



});