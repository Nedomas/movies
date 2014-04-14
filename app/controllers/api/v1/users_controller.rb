class Api::V1::UsersController < ApplicationController
  def show
    user = find_and_suggest(params[:id])

    render json: {
      user: user,
      movies: user_movies(user)
    }
  end

  def update
    user = find_and_suggest(params[:id])

    user[:seen] = params['user']['seen']
    user[:skipped] = params['user']['skipped']

    render json: {
      user: user,
      movies: user_movies(user)
    }
  end

  private

  def find_and_suggest(id)
    user = find(id)
    random_movie_id = MOVIES.map { |m| m[:id] }[rand(0...MOVIES.length)]
    user.merge!(suggested: random_movie_id)
  end

  def find(id)
    USERS.find { |movie| movie[:id] == id }
  end

  def user_movies(user)
    MOVIES.select do |m|
      m[:id].in?(user[:seen] + user[:skipped] + [user[:suggested]])
    end
  end

end
