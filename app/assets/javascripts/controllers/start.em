class App.StartController extends Em.Controller
  actions:
    search: ->
      _this = this

      @store.find('movie', 1).then (movie) ->
        _this.transitionToRoute('suggest', movie.get('id'))
