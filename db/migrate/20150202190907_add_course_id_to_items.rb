class AddCourseIdToItems < ActiveRecord::Migration
  def change
    add_column :items, :course_id, :integer
  end
end
