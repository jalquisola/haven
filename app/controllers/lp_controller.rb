class LpController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:show]
  layout 'zoner/lp'

  def show
    @property = Property.friendly.includes(:agent, :unit_types, :description, :floor_plans).find(params[:id])
    return redirect_to root_url  unless @property

    @title = "#{@property.name} - www.mybesthaven.com"
    if @property.name == "Shore 2 Residences"
      @title = "#{@property.name} - A Private Island called HOME."
      @desc = "Located in SM Mall of Asia. Pre-selling Units at 0% over 40 months. Monthly Investment starts at Php14,000++. Inquire NOW!"
    else
      @desc = "Are you looking for #{@property.name}? Learn more about the project by reading this article."
    end
    @image_url = @property.images.first.url

    @agent = @property.agent
    @unit_types = @property.unit_types
    @description = @property.description
    @current_user = current_user
    @comments = @property.comments
    @enquiry = Enquiry.new
  end
end
