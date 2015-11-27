class User < ActiveRecord::Base
  has_many :user_programs
  has_many :programs, :through => :user_programs
  GENDER_OPTIONS = { :male => :true, :female => :false, :unspecified => :nil}
end
