class ApplicationController < ActionController::Base

  def index
    @item = Item.all
  end
end
