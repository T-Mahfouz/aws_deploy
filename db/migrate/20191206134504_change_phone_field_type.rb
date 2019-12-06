class ChangePhoneFieldType < ActiveRecord::Migration[6.0]
  def change
    change_column :bookings, :phone, :string
  end
end
