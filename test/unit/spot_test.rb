# == Schema Information
#
# Table name: spots
#
#  id         :integer         not null, primary key
#  profile_id :integer
#  duration   :integer
#  position   :integer
#  valid_from :datetime
#  valid_to   :datetime
#  status     :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class SpotTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
