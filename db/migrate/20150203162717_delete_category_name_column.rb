class DeleteCategoryNameColumn < ActiveRecord::Migration
  def change
    remove_column :items, :category_name, :string
  end
end
