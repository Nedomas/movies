class App.StartRoute extends Em.Route
  model: ->
    @store.find('movie', 1)
    # @store.createRecord('movie')
