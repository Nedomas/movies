class App.ApplicationRoute extends Ember.Route with Ember.SimpleAuth.ApplicationRouteMixin
  beforeModel: ->
    @get('session.user')

  actions:
    sessionAuthenticationSucceeded: ->
      @flashMessage('You have successfully signed in.')
      @transitionTo('start')
    sessionAuthenticationFailed: ->
      @flashMessage('The password is invalid.').now()
    sessionInvalidationSucceeded: ->
      @flashMessage('You have successfully signed out.')
      @transitionTo('start', 1)

