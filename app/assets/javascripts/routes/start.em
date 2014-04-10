class App.StartRoute extends Em.Route
  model: ->
    @store.find('movie', 745781820)
    # @store.createRecord('movie')
