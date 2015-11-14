class TrainingDay < ActiveRecord::Base
  belongs_to :muscle_group
  has_many :training_day_exercises
  has_many :exercises, :through => :training_day_exercises
  has_many :program_training_days
end
