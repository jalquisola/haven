class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  rescue_from ActionController::RoutingError, with: :render_not_found
  rescue_from ActiveRecord::RecordNotFound, with: :render_not_found

  def authorize_admin
    redirect_to root_path, alert: 'Access Denied' if current_user.blank? || !current_user.admin?
  end

  def raise_not_found!
    redirect_to root_url
  end

  def render_not_found(e)
    respond_to do |f|
      f.html{ render template: "errors/404", layout: false, status: 404 }
      f.js{ render partial: "errors/ajax_404", status: 404 }
    end
  end
end
