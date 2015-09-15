class PagesController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:single, :explore]

  def home
    if user_signed_in?
      return redirect_to explore_pages_url
    end

    @banners = Banner.all
    @properties = Property.limit(6)
  end

  def explore
    render :explore, layout: 'explore'
  end

  def single
    @property = Property.where(id: params[:property_id]).first
    return redirect_to root_url  unless @property

    @unit_types = @property.unit_types
    @description = @property.description
    @current_user = current_user
    @comments = @property.comments
    @enquiry = Enquiry.new
    render :single, layout: 'single'
  end

  def dashboard
    render :dashboard, layout: 'dashboard'
  end

  def sellers
    render :sellers, layout: 'sellers'
  end
end
