class UserMailer < ActionMailer::Base

  FEEDBACK_EMAIL = "office.ltg@gmail.com"
  DEFAULT_SENDER = "NKBook.pl Feedback Mailer <office@nkbook.pl>"

  def feedback_email(feedback)
    set_headers FEEDBACK_EMAIL, "NKBook.pl Feedback", DEFAULT_SENDER
    body :feedback => feedback
  end

private

  def set_headers(email_recipients, email_subject, email_sender)
    recipients email_recipients
    subject email_subject
    from email_sender
  end

end
