class Room < ApplicationRecord
  belongs_to :user

  has_many :calendars
  has_many :photos
  has_many :reservations
  has_mnay :reviews
end
