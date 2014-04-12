class Api::V1::UsersController < ApplicationController
  def show
    user = find(params[:id])

    render json: {
      user: user
    }
  end

  private

  def find(id)
    USERS.find { |movie| movie[:id] == id }
  end
end
