require 'test_helper'

class UserMailerTest < ActionMailer::TestCase

  def test_feedback_email
    feedback = feedbacks(:one)

    email = UserMailer.deliver_feedback_email(feedback)
    assert !ActionMailer::Base.deliveries.empty?

    assert_equal [UserMailer::FEEDBACK_EMAIL], email.to
    assert_equal "NKBook.pl Feedback", email.subject
    assert_match /#{feedback.username}/, email.encoded
    assert_match /#{feedback.message}/, email.encoded
  end

end
