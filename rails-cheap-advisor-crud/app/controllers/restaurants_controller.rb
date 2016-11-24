class RestaurantsController < ApplicationController

  before_action :set_restaurant, only: [:show, :update, :edit, :destroy]

  # GET /restaurants
  def index
    @restaurants = Restaurant.all
  end

  # GET /restaurants/:id
  def show
  end

  # GET /restaurants/new
  def new
    @restaurant = Restaurant.new
  end

  # POST /restaurants/create

  def create
    # @restaurant = Restaurant.new(params[:restaurant])
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      #back to the form
    end
  end

  # GET /restaurants/:id/edit
  def edit
  end

  # PATCH/PUT /restaurants/:id
  def update
    @restaurant.update(restaurant_params)
    redirect_to restaurant_path(@restaurant)
  end

  # DELETE /restaurants/:id
  def destroy
    @restaurant.destroy
    redirect_to restaurants_path
  end


  private
  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :stars)
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end
end
