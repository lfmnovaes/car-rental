class City < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :cars, through: :reservations

  validates :name, presence: true, uniqueness: true, length: { maximum: 100 }
end
