class Exercise < ActiveRecord::Base
  belongs_to :muscle_group
  has_many :training_day_exercises
  has_many :training_days, :through => :training_day_exercises
  has_many :exercise_descriptions
end
