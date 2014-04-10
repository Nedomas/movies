class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_filter :set_current_user
  def set_current_user
    User.current = User.find(doorkeeper_token.resource_owner_id) if doorkeeper_token
  end
end
