class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(user_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant) # show du restaurant en question
    else
      render 'new'
    end
  end

  private

  def user_params
    params.require(:restaurant).permit(:name, :address, :phone_number, :category)
  end
end
