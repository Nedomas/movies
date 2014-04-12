class App.User extends DS.Model
  email: DS.attr('string')
  password: DS.attr('string')
  passwordConfirmation: DS.attr('string')
  seen: DS.hasMany('movie')
  last: DS.belongsTo('movie')
