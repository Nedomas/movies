class App.SuggestRoute extends Em.Route
  model: (params) ->
    @store.find('movie', params.movie_id)
