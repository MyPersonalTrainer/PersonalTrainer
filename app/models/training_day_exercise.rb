class TrainingDayExercise < ActiveRecord::Base
  belongs_to :training_day
  belongs_to :exercise
end
