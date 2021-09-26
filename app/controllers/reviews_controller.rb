class ReviewsController < ApplicationController
before_action :set_review, only: [:update, :destroy]


    def create
        review = Review.create(review_params)
        render json: review

    end

    def update
        @review.update(review_params)
        render json: @review

    end

    def destroy
        @review.destroy
        render json: {}
    end


    private

    def review_params
        params.require(:review).permit(:title, :description, :rating, :game)
    end   

    def set_review
        @review = Review.find(params[:id])
      end

end