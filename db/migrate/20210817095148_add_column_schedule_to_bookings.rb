class AddColumnScheduleToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :schedule_date, :string
  end
end
