class Api::V1::MoviesController < ApplicationController
  respond_to :json

  def index
    movie = find_movie_by_title(params[:title])
    movie = MOVIES.first unless movie

    render json: {
      movies: [movie]
    }
  end

  def show
    movie = find_movie(params[:id])

    render json: {
      movie: movie
      # movies: similar(movie)
    }
  end

  private

  def find_movie_by_title(title)
    MOVIES.find { |movie| movie[:title] == title }
  end

  def find_movie(id)
    MOVIES.find { |movie| movie[:id] == id }
  end

  def similar(movie)
    MOVIES
  end
end
