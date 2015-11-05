class PagesController < ApplicationController
  before_filter :set_properties, only:[ :home ]
  before_filter :set_images, only:[ :home ]

  def home
    if user_signed_in?
      return redirect_to realestates_path
    end
    @banners = Banner.all
  end

  def dashboard
    render :dashboard, layout: 'dashboard'
  end

  def sellers
    render :sellers, layout: 'sellers'
  end

  private
  def set_properties
    @properties = Property.includes(:unit_types, :images).all
  end

  def set_images
    @images = Image.where(property_id: @properties.map(&:id), position: 1).group_by(&:property_id)
  end
end
