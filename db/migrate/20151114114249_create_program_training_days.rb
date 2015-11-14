class CreateProgramTrainingDays < ActiveRecord::Migration
  def change
    create_table :program_training_days do |t|
      t.belongs_to :program, index: true
      t.belongs_to :training_day, index: true

      t.timestamps null: false
    end
  end
end
