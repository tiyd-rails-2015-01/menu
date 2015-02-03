class AddMealIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :meal_id, :integer
  end
end
