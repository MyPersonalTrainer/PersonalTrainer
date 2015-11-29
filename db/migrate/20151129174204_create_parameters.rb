class CreateParameters < ActiveRecord::Migration
  def change
    create_table :parameters do |t|
      t.integer :weight
      t.integer :height
      t.integer :complexity
      t.boolean :can_do_bars
      t.boolean :can_do_hbar
      t.references :user, index: true

      t.timestamps null: false
    end
    add_foreign_key :parameters, :users
  end
end
