# == Schema Information
#
# Table name: feedbacks
#
#  id         :integer         not null, primary key
#  username   :string(255)
#  message    :text
#  status     :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class FeedbackTest < ActiveSupport::TestCase

  def test_should_be_valid
    assert feedbacks(:one).valid?
  end

  def test_validate_format_of_username
    feedbacks(:one).username = 'wrong'

    deny feedbacks(:one).valid?
    assert feedbacks(:one).errors.on(:username)
  end

  def test_set_default_status_on_create
    feedback = Feedback.new(:username => 'me@home.lol', :message => 'Nice to meet you')
    feedback.save

    assert_equal Feedback::OPEN, feedback.status
  end

end
