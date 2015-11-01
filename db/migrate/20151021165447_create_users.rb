class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :gender
      t.integer :age
      t.integer :weight
      t.integer :height
      t.integer :experience
      t.integer :activity
      t.integer :physical_level
      t.integer :complexity
      t.integer :training_type
      t.integer :stature
      t.integer :blood_pressure

      t.timestamps null: false
    end
  end
end
