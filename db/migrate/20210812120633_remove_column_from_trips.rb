class RemoveColumnFromTrips < ActiveRecord::Migration[6.0]
  def change
    remove_column :trips, :bookings_id, :string
  end
end
