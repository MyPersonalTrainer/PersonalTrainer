class TrainingDay < ActiveRecord::Base
  has_many :training_day_exercises
  has_many :exercises, :through => :training_day_exercises
  has_many :program_training_days
end
