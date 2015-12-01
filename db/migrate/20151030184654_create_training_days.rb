class CreateTrainingDays < ActiveRecord::Migration
  def change
    create_table :training_days do |t|
      t.timestamps null: false
    end
  end
end
