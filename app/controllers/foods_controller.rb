class FoodsController < ApplicationController
before_action :set_food, only: [:edit, :update, :destroy]
before_action :category_list
  def new
    @food = Food.new
    @category = Category.new
  end

  def index
    @foods = Food.all
  end

  def edit
    @category = @food.category_id
  end

  def create
    @food = @foods.blank? ? 0 : Food.new(food_params)
    #@food.category_id = @category.id
    respond_to do |format|
      if @food.save
        format.html { redirect_to foods_path, notice: 'Menu Item was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def update
    respond_to do |format|
      if @food.update(food_params)
        format.html { redirect_to foods_path, notice: 'Menu Item was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  def destroy
    @food.destroy
    respond_to do |format|
      format.html { redirect_to foods_path, notice: 'Menu Item was successfully removed.' }
    end
  end


  private def set_food
    @food = Food.find(params[:id])
  end

  private def food_params
    params.require(:food).permit(:category_id, :name, :description, :price)
  end

  private def category_list
    @all_categories = Category.all.map {|c| [c.name, c.id] }
  end
end
