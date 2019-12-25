class RemoveIndexFromBookings < ActiveRecord::Migration[6.0]
  def change
    remove_index :bookings, column: :email
  end
end
