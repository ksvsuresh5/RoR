jQuery ->
  $('body').prepend '<div id="fb-root"></div>'
  $.ajax
    url: window.location.protocol + '//connect.facebook.net/en_US/all.js'
    dataType: 'script'
    cache: true

window.fbAsyncInit = ->
  FB.init
    appId: '1275942382423351'
    cookie: true
  $('#sign_in').click (e) ->
    e.preventDefault()
    FB.login (response) ->
      if response.authResponse
        return window.location = '/auth/facebook/callback?' + $.param(signed_request: response.authResponse.signedRequest)
      return
  $('#sign_out').click (e) ->
    FB.getLoginStatus (response) ->
      if response.authResponse
        return FB.logout()
      return
    true
  return
