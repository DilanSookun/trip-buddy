class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.integer :total_price
      t.string :review
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
