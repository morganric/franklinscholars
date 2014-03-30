class HomeController < ApplicationController

  def index
    @users = User.all
    @schools = School.all
    @students = Student.all

    @mentors = Student.where(:mentor => true)
    @mentees = Student.where(:mentor => false)

    today = Date.today
    @upcoming_sessions = current_user.sessions.where('date > ?', today)
    @past_sessions = current_user.sessions.where('date <= ? ', today)

  end

  def welcome
  	
  end
end
