class CreatePrograms < ActiveRecord::Migration
  def change
    create_table :programs do |t|
      t.integer :training_type

      t.timestamps null: false
    end
  end
end
