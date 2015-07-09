class PagesController < ApplicationController
  def home
    if user_signed_in?
      return redirect_to pages_explore_url
    end

    @banners = Banner.all
    @properties = Property.all
  end

  def explore
    render :explore, layout: 'explore'
  end

  def single
    @property = Property.where(id: params[:property_id]).first
    return redirect_to root_url  unless @property

    render :single, layout: 'single'
  end

  def dashboard
    render :dashboard, layout: 'dashboard'
  end
end
