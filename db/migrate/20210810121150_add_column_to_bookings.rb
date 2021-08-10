class AddColumnToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :trip, null: false, foreign_key: true
  end
end
