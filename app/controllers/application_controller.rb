class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :require_login

  def current_user
    @current_user = @current_user || User.find_by_id(session[:user_id])
  end


  def require_login
    unless current_user
      redirect_to login_url
    end
  end

end
