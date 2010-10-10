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
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
