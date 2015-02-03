class AddTimeToItems < ActiveRecord::Migration
  def change
    add_column :items, :time_id, :integer
  end
end
