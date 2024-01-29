class Yacht < ApplicationRecord
  belongs_to :user
  has_many :bookings

  # attribute :image_url, :string
end
