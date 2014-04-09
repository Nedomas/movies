class App.Store extends DS.Store
  # adapter: DS.FixtureAdapter

DS.RESTAdapter.reopen
  namespace: 'api/v1'
