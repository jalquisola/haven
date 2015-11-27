# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
#
validateEmail = (email) ->
  re = /^([\w-]+(?:\.[\w-]+)*)@((?:[\w-]+\.)*\w[\w-]{0,66})\.([a-z]{2,6}(?:\.[a-z]{2})?)$/i;
  re.test(email)

updateFormGroup = ($formGroup, msg) ->
  $formGroup.addClass('has-error')
  if $formGroup.find('.control-label').length == 0
    $formGroup.prepend("<label class='control-label'>#{msg}</label>")
  else
    $formGroup.find('label').text(msg)

$ ->
  $subscriberPopup = $('#subscriberPopup');

  $subscriberPopup.on 'shown.bs.modal', (e) ->
    setTimeout (e) ->
      $subscriberPopup.find("input[type='email']").focus();
    , 1000

  $('#subscribe_button').on 'click', (e)->
    $form = $(e.target).closest('form')
    $email = $form.find("input[type='email']");
    if validateEmail $email.val()
      $.ajax
        type: 'POST'
        dataType: 'json'
        url: '/subscribers'
        data:
          email: $email.val()
        success: (e)->
          $.cookie('subscribePopup', 'true', {expires: 7, '/'})
          window.location.href = '/realestates'
        error: (error)->
          msg = "Email has already been taken."
          updateFormGroup($email.closest('.form-group'), msg)
    else
      msg = "Invalid Email"
      updateFormGroup($email.closest('.form-group'), msg)

  $(document).mouseleave (e) ->
    cookiePopup = $.cookie('subscribePopup')
    if cookiePopup && cookiePopup == 'true'
      return false
    else
      $('#subscriberPopup').modal('show');

