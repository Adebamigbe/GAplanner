class Classroom < ActiveRecord::Base
  attr_accessible :class_name, :class_space
  has_many :courses
  has_many :users
end
