class Api::V1::UsersController < ApplicationController
  def show
    user = find(params[:id])

    render json: {
      user: user,
      movies: user_movies(user)
    }
  end

  def update
    user = find(params[:id])
    user[:seen] = params['user']['seen']
    user[:skipped] = params['user']['skipped']

    render json: {
      user: user,
      movies: user_movies(user)
    }
  end

  private

  def find(id)
    USERS.find { |movie| movie[:id] == id }
  end

  def user_movies(user)
    MOVIES.select do |m|
      m[:id].in?(user[:seen] + user[:skipped] + [user[:suggested]])
    end
  end

end
