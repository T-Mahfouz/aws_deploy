require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "booking_confirmation" do
    mail = UserMailer.booking_confirmation
    assert_equal "Booking confirmation", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
