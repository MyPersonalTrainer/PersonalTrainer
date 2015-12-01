class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.integer :training_type
      t.integer :training_place

      t.timestamps null: false
    end
  end
end
