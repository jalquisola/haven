#= require ./default/jquery-2.1.1.min.js
#= require ./default/jquery-ui.min.js
#= require ./default/jquery-ui-touch-punch.js
#= require ./default/jquery.placeholder.js
#= require ./default/underscore.js
#= require ./default/bootstrap.js
#= require ./default/jquery.touchSwipe.min.js
#= require ./default/jquery.slimscroll.min.js
#= require ./default/infobox.js
#= require ./default/jquery.tagsinput.min.js
#= require ./default/bootstrap-datepicker.js
#= require ./default/app.js
#= require ./default/jquery.cookie.js
#= require ./views/subscribers
#= require jquery_ujs

$ ->
  $('#new_enquiry').submit () ->
    $this = $(this)
    valuesToSubmit = $this.serialize()
    $.ajax
      type: 'POST'
      url: $this.attr('action')
      data: valuesToSubmit
      dataType: "json"
    .success (json) ->
      $("#contactAgent").modal('hide')
    .error (xhr, status, error) ->
      $('div.cfItem').removeClass('has-error')
      $alert = $this.find('div.alert')
      html = ["<ul>"]
      for field, msg of xhr.responseJSON
        $field = $("#enquiry_#{field}")
        html.push "<li>#{field} #{msg}</li>"
        $field.closest('div').addClass('has-error')
      html.push "</ul>"

      if $alert.length < 1
        $this.prepend("<div class='alert alert-danger'>#{html.join('')}</div>")
      else
        $alert.html(html.join(''))
      false

    return false
