class AddVideoUrlToExercise < ActiveRecord::Migration
  def change
    add_column :exercises, :video_url, :string
  end
end
