# == Schema Information
#
# Table name: profiles
#
#  id         :integer         not null, primary key
#  login      :string(255)
#  nk_id      :string(255)
#  url        :string(255)
#  email      :string(255)
#  html       :text
#  tos        :boolean
#  status     :integer
#  created_at :datetime
#  updated_at :datetime
#

require 'test_helper'

class ProfileTest < ActiveSupport::TestCase
  # Replace this with your real tests.
  test "the truth" do
    assert true
  end
end
