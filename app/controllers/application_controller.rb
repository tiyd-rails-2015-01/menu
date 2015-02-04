class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  # def load_selection
  #   @meal_for_today = Item.find(session[:item_id])
  # end  Rocky's
end
