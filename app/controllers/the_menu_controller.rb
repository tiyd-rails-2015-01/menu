class TheMenuController < ApplicationController
  def index
    @categorys = Category.all
    @meals = Meal.all
  end

end
