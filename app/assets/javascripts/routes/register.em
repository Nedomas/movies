class App.RegisterRoute extends Em.Route
  model: ->
    @store.createRecord('user')

  actions:
    register: ->
      new_user = @get('currentModel')

      _this = this

      transitionToLogin = (resp) ->
        _this.transitionTo('login')

      new_user.save().then(transitionToLogin)
