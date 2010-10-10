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

class Spot < ActiveRecord::Base

  belongs_to :profile

  validates_presence_of :duration, :position

end
