class PrivacyPolicy < ApplicationRecord
  has_rich_text :english_text
  has_rich_text :arabic_text
end
