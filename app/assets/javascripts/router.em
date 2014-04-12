App.Router.map ->
  @resource 'search', path: '/search', ->
    @route 'results', path: ':keyword'
  @resource 'similar', path: '/similar/:movie_id'
  @route('login')
