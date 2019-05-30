class ReviewsController < ApplicationController
    def create
        @review = current_user.reviews.build(review_params)
        if @review.valid?
            @review.save
            redirect_to car_post_path(@review.car_post_id)
        end
    end

    def destroy
        @review = current_user.reviews.find(params[:id])
        @review.destroy
        redirect_to car_post_path(@review.car_post_id)
    end

    private

    def review_params
        params.require(:review).permit(:user_id, :car_post_id, :content)
    end
end
