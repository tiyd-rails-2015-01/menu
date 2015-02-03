class FoodsController < ApplicationController
before_action :set_food, only: [:edit, :update, :destroy]
before_action :category_list
  def new
    @food = Food.new
    @category = Category.new
    @meal = Meal.new
  end

  def index
    @foods = Food.all
  end

  def edit
    @category = @food.category_id
  end

  def create
    @food = Food.new(food_params)
    if @food.save
      redirect_to foods_path, notice: 'Menu Item was successfully created.'
    else
      render :new
    end
  end

  def update
    if @food.update(food_params)
      redirect_to foods_path, notice: 'Menu Item was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @food.destroy
    redirect_to foods_path, notice: 'Menu Item was successfully removed.'
  end

  private

  def set_food
    @food = Food.find(params[:id])
  end

  def food_params
    params.require(:food).permit(:category_id, :name, :description, :price)
  end

  def category_list
    @all_categories = Category.all.map {|c| [c.name, c.id] }
  end
end
