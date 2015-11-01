class CreateMuscleGroups < ActiveRecord::Migration
  def change
    create_table :muscle_groups do |t|
      t.string :name
      t.text :description

      t.timestamps null: false
    end
  end
end
