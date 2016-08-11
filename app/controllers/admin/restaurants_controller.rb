class Admin::RestaurantsController < ApplicationController
before_action :set_restaurant, only: [:edit, :update, :destroy]

  def index
    @restaurants = Restaurant.all
  end

  def edit
  end

  def update
    if @restaurant.update(restaurant_params)
      redirect_to admin_restaurants_path
    else
      render :edit
    end
  end

  def destroy
    @restaurant.delete
    redirect_to admin_restaurants_path
  end

  private

    def restaurant_params
      params.require(:restaurant).permit(:name, :address, :phone_number, :category)
    end

    def set_restaurant
      @restaurant = Restaurant.find(params[:id])
    end
end
