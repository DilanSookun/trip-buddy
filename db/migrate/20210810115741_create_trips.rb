class CreateTrips < ActiveRecord::Migration[6.0]
  def change
    create_table :trips do |t|
      t.string :name
      t.string :description
      t.string :location
      t.string :duration
      t.integer :price
      t.string :stop_1
      t.string :stop_2
      t.string :choice
      t.string :category
      t.references :bookings, null: false, foreign_key: true

      t.timestamps
    end
  end
end
