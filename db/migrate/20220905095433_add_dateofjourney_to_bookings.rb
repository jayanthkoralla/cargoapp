class AddDateofjourneyToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :date_of_journey, :date
  end
end
