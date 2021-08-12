class AddCoordinatesToTrip < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :latitude, :string
    add_column :trips, :longitude, :string
  end
end
