class CategoriesController < ApplicationController

  def home
    @items = Item.all
    @categories = Category.all

  end

  def index

  end


end
