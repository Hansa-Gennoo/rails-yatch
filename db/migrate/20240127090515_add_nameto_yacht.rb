class AddNametoYacht < ActiveRecord::Migration[7.1]
  def change
    add_column :yachts, :name, :string
  end
end
