class Booking < ApplicationRecord
  validates :first_name, presence: true
  validates :second_name, presence: true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence:   true, length: { maximum: 255 },
            format:     { with: VALID_EMAIL_REGEX }
  validates :phone, presence: true
  validates :disease_type, presence: true
  validates :inquiry, presence: true


  def send_confirmation_email
    UserMailer.booking_confirmation(self).deliver_now
  end

end
