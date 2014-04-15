App.Router.map ->
  @resource 'search', path: '/search', ->
    @route 'results', path: ':keyword'
  @route('suggest')

  @route('register')
  @route('login')
