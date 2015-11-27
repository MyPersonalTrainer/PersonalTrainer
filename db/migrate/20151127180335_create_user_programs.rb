class CreateUserPrograms < ActiveRecord::Migration
  def change
    create_table :user_programs do |t|
      t.references :user, index: true
      t.references :program, index: true

      t.timestamps null: false
    end
    add_foreign_key :user_programs, :users
    add_foreign_key :user_programs, :programs
  end
end
