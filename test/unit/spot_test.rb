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

  def test_should_be_valid
    assert spots(:one)
  end

  def test_validate_inclusion_of_position
    spots(:one).position = 12345

    deny spots(:one).valid?
    assert spots(:one).errors.on(:position)
  end

  def test_validate_unique_spot
    spots(:two).position = spots(:one).position

    deny spots(:two).valid?
  end

  def test_set_interval_before_create
    assert_not_nil spots(:one).valid_from
    assert_not_nil spots(:one).valid_to

    assert 1.day.from_now > spots(:one).valid_from
    assert 6.days.from_now < spots(:one).valid_to
  end

  def test_scope_valid
    spots = Spot.valid

    assert_equal 2, spots.size
  end

end
