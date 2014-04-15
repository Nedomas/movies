class Api::V1::MoviesController < ApplicationController
  respond_to :json

  def index
    movie = find_movie_by_title(params[:title])
    # return random movie when request is invalid
    movie = MOVIES.first unless movie

    render json: {
      movies: [movie]
    }
  end

  def show
    movie = find_movie(params[:id])

    render json: {
      movie: movie
    }
  end

  private

  def find_movie_by_title(title)
    MOVIES.find { |movie| movie[:title] == title }
  end

  def find_movie(id)
    MOVIES.find { |movie| movie[:id] == id }
  end
end
