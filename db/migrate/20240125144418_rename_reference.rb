class RenameReference < ActiveRecord::Migration[7.1]
  def change
    rename_column :bookings, :yatchs_id, :yachts_id
  end
end
