class AddMealtimeIdToCategory < ActiveRecord::Migration
  def change
    add_column :categories, :mealtime_id, :integer
  end
end
