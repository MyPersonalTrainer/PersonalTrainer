class HomeController < ApplicationController
  def index
    prog = Program.new(age: 20, gender: 'male', weight: 60, height: 160, experience: 0,
              activity: 1, physical_level: 1, complexity: 1, training_type: 1, stature: 2)
    prog.save!
    Program.create_plan(prog)
  end
end
