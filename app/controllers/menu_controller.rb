class MenuController < ApplicationController
  def index
    @categories = Category.all
  end
end
