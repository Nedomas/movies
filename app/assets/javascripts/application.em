#= require jquery
#= require lodash
#= require handlebars
#= require ember
#= require ember-data
#= require flash-message
#= require ember-simple-auth
#= require_self
#= require app

console.log('Assets loaded')

window.App = Em.Application.create
  LOG_TRANSITION: true
  LOG_ACTIVE_GENERATION: true
  LOG_VIEW_LOOKUPS: true
  rootElement: '#ember-container'
