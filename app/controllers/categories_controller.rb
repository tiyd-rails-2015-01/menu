class CategoriesController < ApplicationController

  def home
    @items = Item.all
    @categories = Category.all
    @entrees = Item.all.where(category_id: 1)
    @desserts = Item.all.where(category_id: 2)
  end

  def index

  end


end
