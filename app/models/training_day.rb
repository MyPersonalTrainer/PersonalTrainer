class TrainingDay < ActiveRecord::Base
  belongs_to :muscle_group
  has_many :training_day_exercises
  has_many :exercises, :through => :training_day_exercises
  has_and_belongs_to_many :programs
end
