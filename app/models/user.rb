class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :doorkeeper, :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
