class RenameYatchsToYachts < ActiveRecord::Migration[7.1]
  def change
    rename_table :yatches, :yachts
  end
end
