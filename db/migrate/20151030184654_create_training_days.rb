class CreateTrainingDays < ActiveRecord::Migration
  def change
    create_table :training_days do |t|
      t.integer :wday
      t.text :muscles_groups, array: true

      t.timestamps null: false
    end
  end
end
