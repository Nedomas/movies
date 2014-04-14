class App.IndexRoute extends Ember.Route with Ember.SimpleAuth.AuthenticatedRouteMixin
  beforeModel: ->
    if @get('session.isAuthenticated')
      if @get('session.user.last')
        @transitionTo('suggest')
      else
        @transitionTo('search')
    else
      @transitionTo('login')
