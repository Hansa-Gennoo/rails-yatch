class CreateYatches < ActiveRecord::Migration[7.1]
  def change
    create_table :yatches do |t|
      t.binary :image
      t.string :capacity
      t.integer :price_per_day
      t.string :description

      t.timestamps
    end
  end
end
