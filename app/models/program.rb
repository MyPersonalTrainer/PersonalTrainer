class Program < ActiveRecord::Base
  has_many :program_training_days
  has_many :training_days, :through => :program_training_days
  has_many :user_programs
  has_many :users, through: :user_programs

  TRAINING_TYPE = { :strength => 1, :mass => 2, :relief => 3}
  TRAINING_PLACE = {:gym => 1, :home => 2}

  PHYSICAL_LEVEL = {:low => 1,:middle => 2, :high => 3}
  MUSCLE_GROUP = {:back => 1, :chest => 2, :biceps => 3, :triceps => 4,
                  :shoulders => 5, :legs => 6, :press => 7}

end
