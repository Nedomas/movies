class App.SuggestRoute extends Em.Route
  model: (params) ->
    @get('session.user.suggested')

  actions:
    seen: (movie) ->
      _this = this

      @get('session.user').then (user) ->
        user.get('seen').addObject(movie)

        transitionNext = (resp) ->
          _this.refresh()

        user.save().then(transitionNext)

    skip: (movie) ->
      _this = this

      @get('session.user').then (user) ->
        user.get('skipped').addObject(movie)

        transitionNext = (resp) ->
          _this.refresh()

        user.save().then(transitionNext)
