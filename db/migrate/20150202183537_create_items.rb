class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.decimal :price
      t.string :name
      t.string :description

      t.timestamps null: false
    end
  end
end
