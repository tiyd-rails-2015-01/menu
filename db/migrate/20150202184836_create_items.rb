class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :item_name
      t.float :item_price
      t.string :item_description
      t.integer :course_id

      t.timestamps null: false
    end
  end
end
