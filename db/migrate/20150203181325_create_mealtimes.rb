class CreateMealtimes < ActiveRecord::Migration
  def change
    create_table :mealtimes do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
