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

class Feedback < ActiveRecord::Base
end
