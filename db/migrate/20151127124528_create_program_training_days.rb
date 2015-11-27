class CreateProgramTrainingDays < ActiveRecord::Migration
  def change
    create_table :program_training_days do |t|
      t.references :program, index: true
      t.references :training_day, index: true

      t.timestamps null: false
    end
    add_foreign_key :program_training_days, :programs
    add_foreign_key :program_training_days, :training_days
  end
end
