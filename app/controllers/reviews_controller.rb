class ReviewsController < ApplicationController
  def create
    @review = Review.create(text: review_params[:text], sky_id: review_params[:sky_id], user_id: current_user.id)
    redirect_to "/skies/#{@review.sky.id}" #コメントと結びつくスカイの詳細に遷移
  end

    private
    def review_params
      params.permit(:text, :sky_id)
    end
end
