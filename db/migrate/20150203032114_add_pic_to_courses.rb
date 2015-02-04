class AddPicToCourses < ActiveRecord::Migration
  def change
    add_column :courses, :picture, :string
  end
end
