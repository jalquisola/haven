class PagesController < ApplicationController
  layout 'zoner/application'

  def home
    if user_signed_in?
      return redirect_to realestates_path
    end
    @properties = Property.includes(:images).all
  end

  def dashboard
    render :dashboard, layout: 'dashboard'
  end

  def sellers
    render :sellers, layout: 'sellers'
  end
end
