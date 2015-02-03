class CreateFoods < ActiveRecord::Migration
  def change
    create_table :foods do |t|
      t.integer :category_id
      t.integer :price
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
