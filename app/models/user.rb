class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, 
  # :confirmable,
         :recoverable, :rememberable, :trackable, :validatable

  ROLES = %w[admin teacher]

  belongs_to :school
  has_many :sessions

end
