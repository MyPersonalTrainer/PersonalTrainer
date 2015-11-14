class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.boolean :gender
      t.integer :age
      t.integer :weight
      t.integer :height
      t.integer :activity
      t.integer :physical_level
      t.integer :complexity
      t.integer :training_type

      t.timestamps null: false
    end
  end
end
