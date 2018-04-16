class Api::ReviewsController < ApplicationController
  before_action :require_logged_in, only: [:create, :update]
  
  def index
    @reviews = Review.where(listing_id: params[:listing_id])
    render json: @reviews
  end
  
  def show
    @review = Review.find_by(params[:id])
    render json: @review
  end
  
  def create
    @review = Review.new(review_params)
    @review.user_id = current_user.id

    if @review.save
      render json: @review, status: 201
    else
      render json: @review.errors.full_messages, status: 422
    end
  end
  
  def update
    @review = current_user.reviews.find(params[:id])

    if @review.update(review_params)
      render json: @review
    else
      render json: @review.errors.messages, status: 422
    end
  end

  def destroy
    @review = current_user.reviews.find(params[:id])
    @review.destroy
    render json: @review
  end
  
  
  private
  
  def review_params
    params.require(:review).permit(
                                  :listing_id, 
                                  :user_id,
                                  :rating, 
                                  :body
                                  )
  end

end
