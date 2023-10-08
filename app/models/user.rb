class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :event_attendances, dependent: :destroy

  ROLES = ['admin', 'team', 'member']
  DEPARTMENTS = ['President', 'Board', 'Advisory Board', 'Crew']
end
