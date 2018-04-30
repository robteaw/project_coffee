class SessionsController < ApplicationController
  skip_before_filter :verify_authenticity_token
  skip_before_filter :authenticate_user!, :only => "reply", :raise => false

  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id
      redirect_to admin_url
    else
      redirect_to login_url, alert: "Invalid user/password combination"
    end
  end

  def destroy
    session[:user_id] = nil

  end
end
