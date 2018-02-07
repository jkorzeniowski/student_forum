class Student < ActiveRecord::Base
  has_and_belongs_to_many :courses, :join_table => :student_courses
  has_many	:topics
	has_many	:posts
end
