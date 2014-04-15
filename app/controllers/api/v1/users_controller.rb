class Api::V1::UsersController < ApplicationController
  def show
    user = find_and_suggest(params[:id])

    render json: {
      user: user,
      movies: user_movies(user)
    }
  end

  def create
    # DO USER CREATION from params
    user = find_and_suggest('1')

    render json: {
      user: user,
      movies: user_movies(user)
    }
  end

  def update
    user = find_and_suggest(params[:id])

    # params['seen'] and params['skipped'] are populated with new movies
    # on the JS side. Trust JS side
    user[:seen] = params['user']['seen']
    user[:skipped] = params['user']['skipped']

    render json: {
      user: user,
      movies: user_movies(user)
    }
  end

  private

  # return user with new suggested movie id
  # it will be called every update of the user
  # updates to the user happens when user:
  # * clicks SEEN
  # * clicks SKIP
  def find_and_suggest(user_id)
    user = find(user_id)
    random_movie_id = MOVIES.map { |m| m[:id] }[rand(0...MOVIES.length)]
    user.merge!(suggested: random_movie_id)
  end

  def find(user_id)
    USERS.find { |movie| movie[:id] == user_id }
  end

  # return all movie data which may be needed
  def user_movies(user)
    MOVIES.select do |m|
      m[:id].in?(user[:seen] + user[:skipped] + [user[:suggested]])
    end
  end

end
