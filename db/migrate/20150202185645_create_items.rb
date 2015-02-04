class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :course_id
      t.string :image
      t.timestamps null: false
    end
  end
end
