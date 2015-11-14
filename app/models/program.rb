class Program < ActiveRecord::Base
  has_many :program_training_days

  def self.create_plan(program)
    days_array = Array.new(3)
    days_array[0] = TrainingDay.create(wday: 1, muscle_group_id: 1)
    days_array[1] = TrainingDay.create(wday: 3, muscle_group_id: 2)
    days_array[2] = TrainingDay.create(wday: 5, muscle_group_id: 3)
    TrainingDayExercise.create(training_day_id: 1, exercise_id: 21, repetition: 5, sets: 2)
    TrainingDayExercise.create(training_day_id: 1, exercise_id: 22, repetition: 5, sets: 2)
    TrainingDayExercise.create(training_day_id: 2, exercise_id: 10, repetition: 5, sets: 2)
    TrainingDayExercise.create(training_day_id: 2, exercise_id: 11, repetition: 5, sets: 2)
    TrainingDayExercise.create(training_day_id: 3, exercise_id: 15, repetition: 5, sets: 2)
    TrainingDayExercise.create(training_day_id: 3, exercise_id: 16, repetition: 5, sets: 2)
  end
end
