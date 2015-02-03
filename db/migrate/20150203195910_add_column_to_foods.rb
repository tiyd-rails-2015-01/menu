class AddColumnToFoods < ActiveRecord::Migration
  def change
    add_column :foods, :picture, :string
  end
end
