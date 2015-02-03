class AddFeatureColumnToItems < ActiveRecord::Migration
  def change
    add_column :items, :feature, :boolean
  end
end
