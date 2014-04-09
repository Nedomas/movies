class App.User extends DS.Model
  email: DS.attr('string')
  password: DS.attr('string')
  passwordConfirmation: DS.attr('string')
  seen: DS.hasMany('movie', async: true)
  unseen: DS.hasMany('movie', async: true)
  last: DS.belongsTo('movie', async: true)

