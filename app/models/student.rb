class Student < ActiveRecord::Base

	has_one :user

	belongs_to :user
	has_many :student_sessions
	has_many :sessions, :through => :student_sessions

end
