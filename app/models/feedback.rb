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

  validates_presence_of :username, :message
  validates_format_of :username, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i

  before_create :set_default_status

  OPEN     = 1
  CLOSED   = 2
  ANSWERED = 4
  SPAM     = 8

private

  def set_default_status
    self.status = OPEN
  end

end
