class EnquiriesController < ApplicationController
  layout false
  before_action :set_enquiry, only: [:show, :edit, :update, :destroy]
  skip_before_filter :authenticate_user!

  # GET /enquiries
  def index
    @enquiries = Enquiry.all
  end

  # GET /enquiries/1
  def show
  end

  # GET /enquiries/new
  def new
    @enquiry = Enquiry.new
  end

  # GET /enquiries/1/edit
  def edit
  end

  # POST /enquiries
  def create
    @enquiry = Enquiry.new(enquiry_params)
    @property =  Property.where(id: params[:property_id]).first

    respond_to do |format|
      if @enquiry.save
        EnquiryMailer.send_email(params[:property_id], @enquiry.id).deliver_now
        format.html do
          redirect_to realestate_url(@property), notice: 'Enquiry was successfully created.'
        end
        format.json do
          render json: @enquiry, status: :created
        end
      else
        format.html do
          redirect_to realestate_url(@property), error: 'Enquiry creation failed.'
        end
        format.json do
          render json: @enquiry.errors, status: :unprocessable_entity
        end
      end
    end
  end

  # PATCH/PUT /enquiries/1
  def update
    if @enquiry.update(enquiry_params)
      redirect_to @enquiry, notice: 'Enquiry was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /enquiries/1
  def destroy
    @enquiry.destroy
    redirect_to enquiries_url, notice: 'Enquiry was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enquiry
      @enquiry = Enquiry.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def enquiry_params
      params.require(:enquiry).permit(:title, :salutation, :name, :country, :contact_no, :email, :content, :subject)
    end
end
