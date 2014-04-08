class App.StartRoute extends Em.Route
  model: ->
    @store.createRecord('movie')
