class App.User extends DS.Model
  email: DS.attr('string')
  password: DS.attr('string')
  passwordConfirmation: DS.attr('string')
  suggested: DS.belongsTo('movie')
  last: DS.belongsTo('movie')
  seen: DS.hasMany('movie')
  skipped: DS.hasMany('movie')
