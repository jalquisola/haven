class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def authorize_admin
    redirect_to root_path, alert: 'Access Denied' if current_user.blank? || !current_user.admin?
  end
end
