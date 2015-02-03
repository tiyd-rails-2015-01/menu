class AddTimeToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :mealtime_id, :string
  end
end
