App.Router.map ->
  @resource 'start', path: '/'
  @resource 'suggest', path: '/suggest/:movie_id'
