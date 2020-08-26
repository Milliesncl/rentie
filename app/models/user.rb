class User < ApplicationRecord
  has_many :buildings
  has_many :contractors
  has_many :tasks, through: :units

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
