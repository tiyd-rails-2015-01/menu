class Food < ActiveRecord::Base

  belongs_to :category
  default_scope {order(:price)}
end
