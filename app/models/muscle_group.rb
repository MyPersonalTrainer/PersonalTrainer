class MuscleGroup < ActiveRecord::Base
  has_many :exercises
  has_many :training_days
end
