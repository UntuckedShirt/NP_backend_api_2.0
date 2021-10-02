class ReviewsController < ApplicationController
before_action :set_review, only: [:update, :destroy]


def create
    #takes route logic
    @review = Review.new(review_params)

    if @review.save
      #created is a 201 status code that the request has succeeded and has led to the creation of a resource
      render json: @review, status: :created
    else 
      
      #.errors calls out all validation errors which is built into ruby
      #unprocessable_entity is a 422
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  def update
      
    @review = Review.find(params[:id])
    if @review.update(review_params)
      render json: @review
    else
      render json: @review.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @Review = Review.find(params[:id]).destroy!
    #no_content is a 204. No need for client
    head :no_content
  end


    private

    def review_params
        params.require(:review).permit(:title, :description, :rating, :game, :likes)
    end   

    def set_review
        @review = Review.find(params[:id])
      end

end