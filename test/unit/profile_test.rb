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

  def test_should_be_valid
    assert profiles(:one).valid?
  end

  def test_validate_format_of_email
    profiles(:one).email = 'wrong'

    deny profiles(:one).valid?
    assert profiles(:one).errors.on(:email)
  end

  def test_validate_format_of_url
    profiles(:one).url = 'http://localhost'

    deny profiles(:one).valid?
    assert profiles(:one).errors.on(:url)
  end

  def test_validate_format_of_html
    profiles(:one).html = 'dupa'

    deny profiles(:one).valid?
    assert profiles(:one).errors.on(:html)
  end

  def test_validate_three_per_user
    spot3 = spots(:two).clone
    spot3.profile = spots(:two).profile
    spot3.position = 10
    assert spot3.profile.valid?
    spot3.save

    spot4 = spots(:two).clone
    spot4.profile = spots(:two).profile
    spot4.position = 11
    deny spot4.profile.valid?
  end

  def test_should_has_one_spot
    profiles(:one).spot = spots(:one)

    assert_equal spots(:one), profiles(:one).spot
  end

end
