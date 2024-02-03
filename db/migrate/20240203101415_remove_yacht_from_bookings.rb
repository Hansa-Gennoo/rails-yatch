class RemoveYachtFromBookings < ActiveRecord::Migration[7.1]
  def change
    remove_reference :bookings, :yachts, foreign_key: true, index: false
  end
end
