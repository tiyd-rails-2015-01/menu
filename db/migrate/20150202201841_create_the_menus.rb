class CreateTheMenus < ActiveRecord::Migration
  def change
    create_table :the_menus do |t|
      t.string :the_menu

      t.timestamps null: false
    end
  end
end
