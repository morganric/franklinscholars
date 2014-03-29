class Session < ActiveRecord::Base
	has_one :user

	has_many :student_sessions
	has_many :students, :through => :student_sessions
end
