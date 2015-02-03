class Meal < ActiveRecord::Base
  has_many :items
  has_many :categories
end
