class Car < ApplicationRecord
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations

  validates :brand, presence: true, length: { maximum: 100 }
  validates :model, presence: true, uniqueness: true, length: { maximum: 100 }
  validates :year, presence: true
  validates :image, presence: true
  validates :price, presence: true, numericality: { greater_than: 0 }
end
