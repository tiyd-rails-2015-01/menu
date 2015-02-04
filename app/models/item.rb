class Item < ActiveRecord::Base
  belongs_to :course
  belongs_to :mealtime
end
