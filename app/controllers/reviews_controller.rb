class ReviewsController < ApplicationController
  before_action :set_restaurant

  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.build
  end

def create
  @restaurant = Restaurant.find(params[:restaurant_id])
  @review = @restaurant.reviews.build(review_params)
  if @review.save
    redirect_to @restaurant
  else
    render 'restaurants/show'
  end
end
  # def create
  #   @restaurant = Restaurant.find(params[:restaurant_id])
  #   @review = @restaurant.reviews.build(review_params)

  #   if @review.save
  #     # redirect to show page or wherever you want
  #   else
  #     render :new
  #   end
  # end

  private

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
