class City < ApplicationRecord
  has_many :reservations
  has_many :cars, through: :reservations
  has_many :users, through: :reservations
end
