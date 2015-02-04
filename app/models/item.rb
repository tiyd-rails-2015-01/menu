class Item < ActiveRecord::Base
  belongs_to :course

  validates :item_name, :item_description, :item_price, presence: true

end
