App.Router.map ->
  # @resource 'start', path: '/'
  # @resource 'similar', path: '/similar/:movie_id'
  @resource 'search', path: '/search', ->
    @route 'results', path: ':keyword'
  @route('login')
