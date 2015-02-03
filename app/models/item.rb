class Item < ActiveRecord::Base
  belongs_to :category

  def self.categorize
    if self.count> 0
      Item.all.map do |item|
          category = Category.where(name: item.category_name).first
          category.items << item
      end
    end
  end
end
