# User model
class User < ActiveRecord::Base
  has_many :blocks
  has_many :reports, through: :blocks
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end
