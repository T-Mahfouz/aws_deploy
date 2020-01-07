class CreateTermsAndConditions < ActiveRecord::Migration[6.0]
  def change
    create_table :terms_and_conditions do |t|
      t.string :english_title
      t.string :arabic_title

      t.timestamps
    end
  end
end
