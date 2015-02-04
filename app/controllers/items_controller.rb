class ItemsController < ApplicationController

  def index
   @items = Item.all
   @categories = Category.all
  end

  def edit

  end
end
