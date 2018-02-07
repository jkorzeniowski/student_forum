class Course < ActiveRecord::Base
  has_and_belongs_to_many :students, :join_table => :student_courses
  has_many	:topics
end
