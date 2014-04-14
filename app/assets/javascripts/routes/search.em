class App.SearchRoute extends Em.Route with Ember.SimpleAuth.ApplicationRouteMixin
  actions:
    search: (keyword) ->
      @transitionTo('search.results', keyword)

class App.SearchResultsRoute extends Em.Route with Ember.SimpleAuth.ApplicationRouteMixin
  model: (params) ->
    _this = this
    @store.find('movie', title: params.keyword).then (resp) ->
      _this.store.filter 'movie', (record) ->
        record.get('title') == params.keyword

  actions:
    seen: (movie) ->
      _this = this

      @get('session.user').then (user) ->
        user.get('seen').addObject(movie)

        transitionNext = (resp) ->
          _this.transitionTo('suggest')

        user.save().then(transitionNext)
