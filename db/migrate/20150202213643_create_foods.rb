class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.integer :category_id
      t.string :name
      t.string :description
      t.string :price

      t.timestamps null: false
    end
  end
end
