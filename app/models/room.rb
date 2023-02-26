class Room < ApplicationRecord
  belongs_to :user

  has_many :calendars, dependent: :destroy
  has_many :photos, dependent: :destroy
  has_many :reservations, dependent: :destroy
  has_many :reviews, dependent: :destroy
end
