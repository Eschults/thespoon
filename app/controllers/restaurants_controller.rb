class RestaurantsController < ApplicationController
  # FAKE DB => TOMORROW ActiveRecord
  RESTAURANTS = {
    1 => { name: "Pitaya", category: "Thai" },
    2 => { name: "La Brigade", category: "Fast Food" },
    3 => { name: "Surpriz", category: "Turkish" }
  }

  def index
    # @restaurants = Restaurant.where(category: params[:category])
    if params[:category].blank?
      @restaurants = RESTAURANTS
    else
      @restaurants = RESTAURANTS.select { |id, restaurant| restaurant[:category] == params[:category] }
    end
  end

  def show
    @restaurant = RESTAURANTS[params[:id].to_i]
  end
end
