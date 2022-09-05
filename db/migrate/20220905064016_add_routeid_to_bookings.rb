class AddRouteidToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :route_id, :integer
  end
end
