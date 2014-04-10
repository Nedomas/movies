class App.LoginController extends Ember.Controller with Ember.SimpleAuth.LoginControllerMixin
  authenticatorFactory: 'authenticators:custom'
