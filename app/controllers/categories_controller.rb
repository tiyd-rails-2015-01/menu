class CategoriesController < ApplicationController

  def new
    @category = category.new
  end

  def create
    @category = category.new(category_params)

    respond_to do |format|
      if @category.save
        format.html { redirect_to categorys_path, notice: 'category was successfully created.' }
      else
        format.html { render :new }
      end
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def index
    @categories = category.all
  end

  def destroy
    @category = category.find(params[:id])
    @category.destroy
    respond_to do |format|
      format.html { redirect_to categorys_path, notice: 'category was successfully destroyed.' }
    end
  end

  private
  def set_category
    @category = category.find(params[:id])
  end

  def category_params
    params.require(:category).permit(:name, :meal_id)
  end
end
