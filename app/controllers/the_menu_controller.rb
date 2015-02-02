class TheMenuController < ApplicationController
  def index
    @categorys = Category.all
  end

end
