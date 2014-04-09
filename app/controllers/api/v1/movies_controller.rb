class Api::V1::MoviesController < ApplicationController
  respond_to :json

  def show
    movie = find_movie(params[:id])

    render json: {
      movie: movie
    }
  end

  private

  def find_movie(id)
    MOVIES.find { |movie| movie[:id] == id }
  end
end
