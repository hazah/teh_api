class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception, only: :html
  protect_from_forgery with: :null_session, exept: :html

  before_action :authenticate_user!, only: :me

  def me
    render json: User.find(doorkeeper_token.resource_owner_id).as_json
  end
end
