class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :set_session

  def set_session
    if !params[:visitor_id].blank?
      cookies[:visitor_on_safari] = params[:visitor_id]
    end
  end
end
