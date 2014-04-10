App.Router.map ->
  @resource 'start', path: '/'
  @resource 'similar', path: '/similar/:movie_id'
