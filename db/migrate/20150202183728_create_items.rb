class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :image
      t.float :price
      t.string :description
      t.integer :category_key

      t.timestamps null: false
    end
  end
end
