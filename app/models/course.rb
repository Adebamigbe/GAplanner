class Course < ActiveRecord::Base
  attr_accessible :course_code, :course_name, :description, :end_date, :end_time, :price, :space, :start_date, :start_time,  :classroom_id
  has_and_belongs_to_many :users
  belongs_to :classroom
end
