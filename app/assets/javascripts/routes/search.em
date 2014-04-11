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


  setupController: (controller, model) ->
    # @store.filter 'movie', (record) ->
    #   record.get('title') == params.keyword
    controller.set('model', model)
    # _.range(0, 10).map (number) ->
    #   Em.Object.create
    #     name: params.keyword + number.toString()
  # serialize: (keyword) ->
  #   { keyword: keyword }
