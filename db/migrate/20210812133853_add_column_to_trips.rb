class AddColumnToTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :stop_1_lat, :string
    add_column :trips, :stop_1_long, :string
    add_column :trips, :stop_2_lat, :string
    add_column :trips, :stop_2_long, :string
  end
end
