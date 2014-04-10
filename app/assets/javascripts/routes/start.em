class App.StartRoute extends Em.Route with Ember.SimpleAuth.ApplicationRouteMixin
  model: ->
    @store.find('movie', 745781820)
    # @store.createRecord('movie')
