class App.IndexRoute extends Ember.Route with Ember.SimpleAuth.AuthenticatedRouteMixin
  beforeModel: ->
    if @get('session.isAuthenticated')
      @transitionTo('start')
    else
      @transitionTo('login')
