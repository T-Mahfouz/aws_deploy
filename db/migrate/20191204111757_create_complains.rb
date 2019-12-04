class CreateComplains < ActiveRecord::Migration[6.0]
  def change
    create_table :complains do |t|
      t.string :comment
      t.integer :complain_number

      t.timestamps
    end
  end
end
