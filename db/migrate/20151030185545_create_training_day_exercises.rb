class CreateTrainingDayExercises < ActiveRecord::Migration
  def change
    create_table :training_day_exercises do |t|
      t.references :training_day, index: true
      t.references :exercise, index: true
      t.integer :repetition
      t.integer :sets

      t.timestamps null: false
    end
    add_foreign_key :training_day_exercises, :training_days
    add_foreign_key :training_day_exercises, :exercises
  end
end
