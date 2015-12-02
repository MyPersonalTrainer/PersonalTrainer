class MuscleGroup < ActiveRecord::Base
  has_many :exercises
  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  def image_url
    image.url
  end
end
