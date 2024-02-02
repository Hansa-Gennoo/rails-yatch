# db/migrate/YYYYMMDDHHMMSS_fix_bookings_columns.rb
class FixBookingsColumns < ActiveRecord::Migration[7.1]
  def change
    # Supprimez la colonne yachts_id si elle existe
    remove_column :bookings, :yachts_id, if_exists: true

    # Supprimez la contrainte étrangère existante si elle existe
    if foreign_key_exists?(:bookings, :yacht_id)
      remove_foreign_key :bookings, column: :yacht_id
    end

    # Ajoutez la colonne yacht_id si elle n'existe pas
    add_column :bookings, :yacht_id, :bigint, null: false unless column_exists?(:bookings, :yacht_id)

    # Ajoutez l'index pour la nouvelle colonne s'il n'existe pas
    add_index :bookings, :yacht_id, unique: true, name: 'index_bookings_on_yacht_id', if_not_exists: true

    # Ajoutez la nouvelle contrainte étrangère si elle n'existe pas
    add_foreign_key :bookings, :yachts, column: :yacht_id, if_not_exists: true
  end
end
