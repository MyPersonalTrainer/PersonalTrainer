class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  EXCEPTIONS = [:created_at, :muscle_group_id, :exercise_id, :image, :ex_image]
  JSON_EX = {:include =>
                 {:exercise_descriptions =>
                      {:except => EXCEPTIONS + [:id]},
                  :muscle_group => {
                      except: EXCEPTIONS,
                      :methods => [:image_url]
                  }#,
                  #:training_day_exercises => {only: [:sets, :repetitions, :rest_time]}
                 },
             :except => EXCEPTIONS,
              :methods => [:ex_image_url]

  }
  JSON_DAY = {:include =>
                  {:exercises => JSON_EX
                  },
              :except => EXCEPTIONS}
  JSON_PROGRAM = {:include =>
                      {:training_days => JSON_DAY},
                  :except => EXCEPTIONS}
end
