class CreateProgramsAndTrainingDays < ActiveRecord::Migration
  def change
    create_table :programs_training_days do |t|
      t.belongs_to :program, index: true
      t.belongs_to :training_day, index: true
    end
  end
end
