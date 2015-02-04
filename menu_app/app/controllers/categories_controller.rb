class CategoriesController < ApplicationController


  def index
    @Category = Category.all
  end

  def show
  end

  def new
    @Category = Category.new
  end

  private

  def category_params
    params.require(:category).permit(:description, :image)
  end
end
