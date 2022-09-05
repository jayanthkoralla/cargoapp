class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.references :driver, null: false, foreign_key: true
      t.references :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
