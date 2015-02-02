class FoodsController < ApplicationController
  before_action :set_food, only: [:show, :edit, :update, :destroy]

  def index
    @foods = Food.all
    @categories = Category.all
  end

  def show
  end

  def new
    @food = Food.new
  end

  def edit
  end

  def create
    @food = Food.new(food_params)

    respond_to do |format|
      if @food.save
        format.html { redirect_to root_path, notice: 'Food was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @food.update(food_params)
        format.html { redirect_to root_path, notice: 'Food was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @food.destroy
    respond_to do |format|
      format.html { redirect_to root_path, notice: 'Food was successfully destroyed.' }
    end
  end

  private def set_food
    @food = Food.find(params[:id])
  end


  private def food_params
    params.require(:food).permit(:category_id, :name, :description, :price)
  end
end
