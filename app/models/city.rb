class City < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :cars, through: :reservations
  has_many :users, through: :reservations
end
