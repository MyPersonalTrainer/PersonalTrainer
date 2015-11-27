class Program < ActiveRecord::Base
  has_many :program_training_days
  has_many :training_days, :through => :program_training_days

  GENDER_OPTIONS = { :male => :true, :female => :false, :unspecified => :nil}
  TRAINING_TYPE = { :strength => 1, :mass => 2, :relief => 3}
  PHYSICAL_LEVEL = {:low => 1,:middle => 2, :high => 3}
  MUSCLE_GROUP = {:back => 1, :chest => 2, :biceps => 3, :triceps => 4,
                  :shoulders => 5, :legs => 6, :press => 7}

  def self.build_training_plan (id)
    program = Program.find(id)

    case program.training_type
      when TRAINING_TYPE[:strength]
      when TRAINING_TYPE[:mass]
        #training days
        first = TrainingDay.create!(wday: 1, muscles_groups:
                                               [MUSCLE_GROUP[:chest], MUSCLE_GROUP[:biceps], MUSCLE_GROUP[:triceps]])
        second = TrainingDay.create!(wday: 3, muscles_groups:
                                               [MUSCLE_GROUP[:back], MUSCLE_GROUP[:shoulders]])
        third = TrainingDay.create!(wday: 5, muscles_groups:
                                               [MUSCLE_GROUP[:legs]])
        #arr.each {|i| ProgramTrainingDay.create(program: program, training_day: arr[i]) }
        ProgramTrainingDay.create(program: program, training_day: first)
        ProgramTrainingDay.create(program: program, training_day: second)
        ProgramTrainingDay.create(program: program, training_day: third)
        #exercises
        #first day
        TrainingDayExercise.create(training_day: first, exercise_id: 8, repetition: 10, sets: 4)
        TrainingDayExercise.create(training_day: first, exercise_id: 9, repetition: 10, sets: 4)
        TrainingDayExercise.create(training_day: first, exercise_id: 12, repetition: 10, sets: 4)
        TrainingDayExercise.create(training_day: first, exercise_id: 16, repetition: 10, sets: 4)
        TrainingDayExercise.create(training_day: first, exercise_id: 20, repetition: 10, sets: 4)
        TrainingDayExercise.create(training_day: first, exercise_id: 22, repetition: 10, sets: 4)
        TrainingDayExercise.create(training_day: first, exercise_id: 25, repetition: 10, sets: 4)
        #second day
        TrainingDayExercise.create(training_day: second, exercise_id: 1, repetition: 10, sets: 4)
        TrainingDayExercise.create(training_day: second, exercise_id: 2, repetition: 10, sets: 4)
        TrainingDayExercise.create(training_day: second, exercise_id: 5, repetition: 10, sets: 4)
        TrainingDayExercise.create(training_day: second, exercise_id: 31, repetition: 10, sets: 4)
        TrainingDayExercise.create(training_day: second, exercise_id: 33, repetition: 10, sets: 4)
        TrainingDayExercise.create(training_day: second, exercise_id: 37, repetition: 10, sets: 4)
        #third day
        TrainingDayExercise.create(training_day: third, exercise_id: 40, repetition: 10, sets: 4)
        TrainingDayExercise.create(training_day: third, exercise_id: 41, repetition: 10, sets: 4)
        TrainingDayExercise.create(training_day: third, exercise_id: 44, repetition: 10, sets: 4)
        TrainingDayExercise.create(training_day: third, exercise_id: 47, repetition: 10, sets: 4)
      when TRAINING_TYPE[:relief]
      else
        # type code here
    end

  end
end
