class Item < ActiveRecord::Base
  validates :name, :description, :price, :section_id, presence: true
  belongs_to :section
end
