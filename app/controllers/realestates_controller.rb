class RealestatesController < ApplicationController
  skip_before_filter :authenticate_user!, only: [:show, :index]
  layout 'zoner/application'

  def index
    @properties = Property.all
    @properties = @properties.where("short_address LIKE ?", params[:city]) if params[:city].present?
    @properties = @properties.where(property_type: params[:property_type]) if params[:property_type].present?
    @properties = @properties.where(status: params[:status]) if params[:status].present?

    if params[:price].present?
      price = params[:price].match(';') ? params[:price].split(';').first : "#{params[:price]}000000"
      @properties = @properties.where("unit_price >= ?", price)
    end

    @images = Image.where(property_id: @properties.map(&:id).uniq, position: 1).index_by(&:property_id)
  end

  def show
    @property = Property.friendly.includes(:agent, :unit_types, :description, :floor_plans).find(params[:id])
    return redirect_to root_url  unless @property

    @property.update_attribute(:view_count, @property.view_count+1)
    if request.referrer && request.referrer.match(/pages\/explore/)
      @property.update_attribute(:favourite_count, @property.favourite_count+1)
    end

    @agent = @property.agent
    @unit_types = @property.unit_types
    @description = @property.description
    @current_user = current_user
    @comments = @property.comments
    @enquiry = Enquiry.new
  end
end
