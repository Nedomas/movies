class App.Movie extends DS.Model
  title: DS.attr('string')

App.Movie.FIXTURES = [
  {
    id: 1
    title: 'The Shawshank Redemption'
  },
  {
    id: 2
    title: 'The Godfather'
  },
  {
    id: 3,
    title: 'The Dark Knight'
  },
  {
    id: 4,
    title: 'Pulp Fiction'
  },
  {
    id: 5,
    title: 'Death Proof'
  }
]
