class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.integer :category_id
      t.string :category_name
      t.string :name
      t.string :description
      t.float :price

      t.timestamps null: false
    end
  end
end
