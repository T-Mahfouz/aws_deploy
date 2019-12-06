class Booking < ApplicationRecord
  validates :first_name, presence: true
  validates :second_name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence:   true, length: { maximum: 255 },
            format:     { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
  validates :phone, presence: true
  validates :disease_type, presence: true
  validates :inquiry, presence: true
end
