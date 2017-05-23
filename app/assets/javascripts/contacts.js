function validateInput(input) {
  if(input.val() == '') {
    return false;
  }
  return true;
}

function validateEmail(input) {
  var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
  return re.test(input.val());
}

function validFormContact() {
  var valid = true
  $group = $('.form-group.contact')
  if ($group.length > 0) {
    $('.form-group.contact').removeClass('has-error')
    $.each($group, function(key, value){
      var input = $(value).find('.form-control')
      if(!validateInput(input)) {
        $(value).addClass('has-error');
        valid = false
      }
      if(input.attr('id') == 'contact_email') {
        if(!validateEmail(input)) {
          $(value).addClass('has-error');
          valid = false
        }
      }
    });

    return valid;
  }
}

$(document).ready(function(){
  $('#new_contact').submit(function(event){
    console.log('click!')
    if( validFormContact() ) {
      $(this).enabled()
      return;
    }
    else {
      event.preventDefault();
    }
  });
});