class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :city
  belongs_to :car

  validates :date_start, :date_end, presence: true
  validate :start_date_after_end_date

  private

  def start_date_after_end_date
    return if date_end.blank? || date_start.blank?

    if date_end < date_start
      errors.add(:date_end, "The ending date must be after the starting date")
    end
  end
end
