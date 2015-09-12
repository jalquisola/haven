class ImagesController < ApplicationController
  before_action :authorize_admin
  before_action :set_image, only: [:show, :edit, :update, :destroy]
  before_action :set_property
  layout 'scaffold'

  # GET /images
  def index
    @images = Image.where(property_id: @property.id)
  end

  # GET /images/1
  def show
  end

  # GET /images/new
  def new
    unless @property
      return redirect_to properties_url
    end
    @image = Image.new(property_id: @property.id)
  end

  # GET /images/1/edit
  def edit
  end

  # POST /images
  def create
    @image = @property.images.new(image_params)

    if @image.save
      redirect_to property_image_url(id: @image.id, property_id: @property.id), notice: 'Image was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /images/1
  def update
    if @image.update(image_params)
      redirect_to property_image_url(id: @image.id, property_id: @property.id), notice: 'Image was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /images/1
  def destroy
    @image.destroy
    redirect_to property_images_url(@property), notice: 'Image was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = Image.where(id: params[:id], property_id: params[:property_id]).first
    end

    def set_property
      @property = Property.where(id: params[:property_id]).first
    end

    # Only allow a trusted parameter "white list" through.
    def image_params
      params.require(:image).permit(:name, :url, :property_id)
    end
end
