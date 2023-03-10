class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :messages, dependent: :destroy
  has_many :notifications, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :rooms
  has_one :setting, dependent: :destroy
end
