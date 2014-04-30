class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :current_user

private
  def current_user
    begin
   @current_user ||= Artist.find_by_id(session[:current_user_id]) if session[:current_user_id]

    rescue
      session.delete(:current_user_id)

    end 
  end

  


end
