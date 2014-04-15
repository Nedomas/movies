class App.Store extends DS.Store

DS.RESTAdapter.reopen
  namespace: 'api/v1'
