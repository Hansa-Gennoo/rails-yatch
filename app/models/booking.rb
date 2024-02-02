# app/models/booking.rb

class Booking < ApplicationRecord
  belongs_to :yacht
  belongs_to :user

  validates :start_date, presence: true
  validates :end_date, presence: true

  before_save :calculate_total_price

  private

  def calculate_total_price
    num_days = (end_date - start_date).to_i
    self.total_price = num_days * yacht.price_per_day
  end
end
