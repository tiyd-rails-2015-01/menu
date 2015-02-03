class Meal < ActiveRecord::Base
  has_many :categories
end
