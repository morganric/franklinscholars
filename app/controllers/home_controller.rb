class HomeController < ApplicationController

  def index
    @users = User.all
    @schools = School.all
    @students = Student.all
    @mentors = Student.where(:mentor => true)
    @mentees = Student.where(:mentor => false)

  end

  def welcome
  	
  end
end
