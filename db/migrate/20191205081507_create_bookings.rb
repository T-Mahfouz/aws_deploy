class CreateBookings < ActiveRecord::Migration[6.0]
  def change
    create_table :bookings do |t|
      t.string :first_name
      t.string :second_name
      t.string :email
      t.integer :phone
      t.string :indication
      t.string :message

      t.timestamps
    end
  end
end
