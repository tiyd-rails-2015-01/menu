class WelcomeController < ApplicationController
  def index
    @items = Item.all
    @sections = Section.all
  end
end
