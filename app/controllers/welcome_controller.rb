class WelcomeController < ApplicationController
  def index
    @items = Item.all
    @categories = Category.all
    #Item.first.section.name

  end
end
