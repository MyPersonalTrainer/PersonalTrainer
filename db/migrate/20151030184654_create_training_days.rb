class CreateTrainingDays < ActiveRecord::Migration
  def change
    create_table :training_days do |t|
      t.integer :wday
      t.references :muscle_group, index: true

      t.timestamps null: false
    end
    add_foreign_key :training_days, :muscle_groups
  end
end
