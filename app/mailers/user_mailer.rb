class UserMailer < ApplicationMailer

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.user_mailer.booking_confirmation.subject
  #
  def booking_confirmation(booking)

      @booking = booking
      mail to: "admin@example.com", subject: "Inquiry Request"


  end
end
