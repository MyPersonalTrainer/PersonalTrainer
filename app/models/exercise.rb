class Exercise < ActiveRecord::Base
  belongs_to :muscle_group
  has_many :training_day_exercises
  has_many :training_days, :through => :training_day_exercises
  has_many :exercise_descriptions
  has_attached_file :ex_image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :ex_image, content_type: /\Aimage\/.*\Z/
  def ex_image_url
    ex_image.url
  end
end
