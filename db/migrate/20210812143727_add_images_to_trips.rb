class AddImagesToTrips < ActiveRecord::Migration[6.0]
  def change
    add_column :trips, :image_url, :string
    add_column :trips, :stop_1_img_url, :string
    add_column :trips, :stop_2_img_url, :string
  end
end
