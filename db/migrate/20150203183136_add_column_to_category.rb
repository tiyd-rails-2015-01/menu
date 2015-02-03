class AddColumnToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :meal_id, :integer
  end
end
