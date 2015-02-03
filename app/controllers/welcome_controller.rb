class WelcomeController < ApplicationController
  def index
    @items = Item.all
    @sections = Section.all
    #Item.first.section.name

  end
end
