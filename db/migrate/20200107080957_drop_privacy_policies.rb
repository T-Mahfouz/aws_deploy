class DropPrivacyPolicies < ActiveRecord::Migration[6.0]
  def change
    drop_table :privacy_policies
    drop_table :terms_and_conditions
  end
end
