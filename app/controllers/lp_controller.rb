class LpController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:show]
  layout 'zoner/lp'

  def show
    @property = Property.friendly.includes(:agent, :unit_types, :description, :floor_plans).find(params[:id])
    return redirect_to root_url  unless @property

    @title = "#{@property.name} - #{ENV['WEBSITE_TITLE']} LP"
    @desc = "Are you looking for #{@property.name}? Learn more about the project by reading this article."
    @image_url = @property.images.first.url

    @agent = @property.agent
    @unit_types = @property.unit_types
    @description = @property.description
    @current_user = current_user
    @comments = @property.comments
    @enquiry = Enquiry.new
  end
end
