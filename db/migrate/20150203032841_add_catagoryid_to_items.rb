class AddCatagoryidToItems < ActiveRecord::Migration
  def change
    add_column :items, :catagory_id, :integer
  end
end
