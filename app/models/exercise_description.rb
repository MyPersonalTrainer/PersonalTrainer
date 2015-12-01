class ExerciseDescription < ActiveRecord::Base
  belongs_to :exercise
  default_scope {order('id ASC')}
end
