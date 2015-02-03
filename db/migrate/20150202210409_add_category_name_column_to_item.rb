class AddCategoryNameColumnToItem < ActiveRecord::Migration
  def change
    add_column :items, :category_name, :string
  end
end
