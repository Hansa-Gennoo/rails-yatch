class RemoveUserFromBookings < ActiveRecord::Migration[7.1]
  def change
    remove_reference :bookings, :users, foreign_key: true, index: false
  end
end
