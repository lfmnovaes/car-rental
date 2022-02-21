class User < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :cars, through: :reservations
end
