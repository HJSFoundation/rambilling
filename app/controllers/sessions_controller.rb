class SessionsController < ApplicationController

  skip_before_filter :require_login, :only => [:new, :create]

  def new
  end

  def create
    user = User.find_by_name(params[:name])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to root_url, notice: "Welcome back, #{user.name.capitalize}"
    else
      render 'new'
    end

  end

  def destroy
    reset_session
    redirect_to login_url
  end
end
