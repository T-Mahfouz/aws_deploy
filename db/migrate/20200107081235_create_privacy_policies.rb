class CreatePrivacyPolicies < ActiveRecord::Migration[6.0]
  def change
    create_table :privacy_policies do |t|
      t.string :english_title
      t.string :arabic_title

      t.timestamps
    end
  end
end
