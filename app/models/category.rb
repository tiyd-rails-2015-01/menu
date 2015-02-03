class Category < ActiveRecord::Base
  belongs_to :meal
  has_many :foods
end
