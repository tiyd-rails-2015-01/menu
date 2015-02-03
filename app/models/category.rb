class Category < ActiveRecord::Base
  belongs_to :meal
  has_many :foods

  def priciest_picture
    priciest_food = foods.where("picture IS NOT NULL").last
    priciest_food ? priciest_food.picture : ""
  end
end
