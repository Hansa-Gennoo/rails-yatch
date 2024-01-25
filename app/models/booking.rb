class Booking < ApplicationRecord
  belongs_to :yatchs
  belongs_to :users

  validates :start_date, presence: true
  validates :end_date, presence: true
end
