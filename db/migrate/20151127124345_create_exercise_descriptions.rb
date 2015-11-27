class CreateExerciseDescriptions < ActiveRecord::Migration
  def change
    create_table :exercise_descriptions do |t|
      t.text :step
      t.references :exercise, index: true

      t.timestamps null: false
    end
    add_foreign_key :exercise_descriptions, :exercises
  end
end
