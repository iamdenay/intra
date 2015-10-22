class Student < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  protokoll :student_id, :pattern => "%yBD#####"
  has_many :lessons
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

end
