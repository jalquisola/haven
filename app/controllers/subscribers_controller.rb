class SubscribersController < ApplicationController
  skip_before_filter :authenticate_user!

  def create
    @subscriber = Subscriber.new(email: params[:email])

    respond_to do |format|
      if @subscriber.save
        format.html{ redirect_to root_path }
        format.json{ render json: @subscriber, status: :created }
      else
        format.html{ redirect_to root_path }
        format.json{ render json: @subscriber.errors, status: :unprocessable_entity }
      end
    end
  end
end
