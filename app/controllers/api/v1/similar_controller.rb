class Api::V1::SimilarController < ApplicationController
  def show
    rotten_tomatoes_id = '745781820'
    similar = MOVIES.find do |movie|
      movie[:rotten_tomatoes_id] == rotten_tomatoes_id
    end

    render json: {
      similar: [similar]
    }
  end
end
