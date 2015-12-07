class AddAttachmentExImageToExercises < ActiveRecord::Migration
  def self.up
    change_table :exercises do |t|
      t.attachment :ex_image
    end
  end

  def self.down
    remove_attachment :exercises, :ex_image
  end
end
