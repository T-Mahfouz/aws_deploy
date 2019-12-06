class ChangeIndicationFromBookings < ActiveRecord::Migration[6.0]
  def change
    rename_column :bookings, :message, :inquiry
    rename_column :bookings, :indication, :disease_type
  end
end
