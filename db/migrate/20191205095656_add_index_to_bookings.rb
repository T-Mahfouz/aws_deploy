class AddIndexToBookings < ActiveRecord::Migration[6.0]
  def change
    add_index :bookings, :email, unique: true
  end
end
