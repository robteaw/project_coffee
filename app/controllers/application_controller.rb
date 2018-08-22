class ApplicationController < ActionController::Base
  before_action :set_i18n_locale_from_params
  # before_action :authorize

  protect_from_forgery with: :exception

  protected

  def set_i18n_locale_from_params
    if params[:locale]
      if I18n.available_locales.map(&:to_s).include?(params[:locale])
        I18n.locale = params[:locale]
      else
        flash.now[:notice] = "#{params[:locale]} translation not available"
        logger.error flash.now[:notice]
      end
    end
  end

  # def authorize
  #   unless User.find_by(id: session[:user_id])
  #     redirect_to login_url, notice: "Please log in"
  #   end
  # end

  protected
  def authenticate_user
    unless user_signed_in?
      redirect_to root_path, :alert => 'Please sign in first.'
    end
  end


  def authenticate_admin
    if !user_signed_in?
      redirect_to root_path, :alert => 'Please sign in first.'
    elsif !current_user.try(:admin?)
      redirect_to root_path, :alert => 'You are not an admin.'
    end
  end

end

