class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.references :muscle_group, index: true

      t.timestamps null: false
    end
  end
end
