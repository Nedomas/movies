class SeenController < ApplicationController

  def set_to_seen
    Seen.create(user_id: current_user.id, movie_id: params[:movie_id], zjbs: true)
  end

  def set_to_uninteresting
    Seen.create(user_id: current_user.id, movie_id: params[:movie_id], zjbs: false)
  end
end