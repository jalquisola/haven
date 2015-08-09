class CommentsController < ApplicationController
  def create
    if user_signed_in?
      @property = Property.where(id: params[:property_id]).first
      redirect_to :back, notice: "Unable to post your comment" unless @property

      @comment = @property.comments.new(comment_params)
      @comment.user_id = current_user.id
      @comment.save
      redirect_to :back
    else
      redirect_to new_user_registration_url
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Banner.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def comment_params
      params.require(:comment).permit(:content)
    end
end
