class AddCountryNameToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :country_name, :string
    add_column :bookings, :country_code, :string
  end
end
