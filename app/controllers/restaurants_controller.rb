class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_param)
    @review = Review.find(params[:restaurant_id])
    @review.restaurant = @restaurant
    if @restaurant.save
      redirect_to @garden
    else
      render 'restaurants/show'
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  private

  def restaurant_param
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
