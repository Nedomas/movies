class App.Movie extends DS.Model
  title: DS.attr('string')
  similar: DS.hasMany('movie')
