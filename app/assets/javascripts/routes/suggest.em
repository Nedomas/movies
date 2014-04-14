class App.SuggestRoute extends Em.Route
  model: (params) ->
    @get('session.user.suggested')
