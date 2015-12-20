class PropertyFeaturesController < ApplicationController
  before_action :set_property_feature, only: [:show, :edit, :update, :destroy]
  layout 'zoner/scaffold'

  # GET /property_features
  def index
    @property_features = PropertyFeature.all
    @properties = Property.where(id: @property_features.map(&:property_id).uniq).index_by(&:id)
    @features = Feature.where(id: @property_features.map(&:feature_id).uniq).index_by(&:id)
  end

  # GET /property_features/1
  def show
  end

  # GET /property_features/new
  def new
    @property_feature = PropertyFeature.new
  end

  # GET /property_features/1/edit
  def edit
  end

  # POST /property_features
  def create
    @property_feature = PropertyFeature.new(property_feature_params)

    if @property_feature.save
      redirect_to @property_feature, notice: 'Property feature was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /property_features/1
  def update
    if @property_feature.update(property_feature_params)
      redirect_to @property_feature, notice: 'Property feature was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /property_features/1
  def destroy
    @property_feature.destroy
    redirect_to property_features_url, notice: 'Property feature was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_property_feature
      @property_feature = PropertyFeature.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def property_feature_params
      params.require(:property_feature).permit(:property_id, :feature_id)
    end
end
