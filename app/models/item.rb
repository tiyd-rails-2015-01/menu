class Item < ActiveRecord::Base
  validates :name, presence: true
  validates :category_id, presence: true
  validates :meal_id, presence: true
  validates :price, presence: true
  belongs_to :category
  belongs_to :meal
end
