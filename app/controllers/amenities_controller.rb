class AmenitiesController < ApplicationController
  before_action :set_amenity, only: [:show, :edit, :update, :destroy]
  before_action :set_property
  layout 'scaffold'

  def index
    @amenities = Amenity.where(property_id: @property.id)
  end

  def show
  end

  def new
    unless @property
      return redirect_to properties_url
    end
    @amenity = @property.amenities.new
  end

  def edit
  end

  def create
    @amenity = @property.amenity.new(amenity_params)

    if @amenity.save
      redirect_to property_amenity_url(id: @amenity.id, property_id: @property.id), notice: 'Amenity was successfully created.'
    else
      render :new
    end
  end

  def update
    if @amenity.update(amenity_params)
      redirect_to property_amenity_url(id: @amenity.id, property_id: @property.id), notice: 'Amenity was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @amenity.destroy
    redirect_to property_amenities_url(@property), notice: 'Amenity was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_amenity
      @amenity = Amenity.where(id: params[:id], property_id: params[:property_id]).first
    end

    def set_property
      @property = Property.where(id: params[:property_id]).first
    end

    # Only allow a trusted parameter "white list" through.
    def amenity_params
      params.require(:amenity).permit(:name, :code, :icon)
    end
end
