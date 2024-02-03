class RemoveForeignKeyFromBookings < ActiveRecord::Migration[7.1]
  def change
    remove_foreign_key :bookings, :yachts
  end
end
