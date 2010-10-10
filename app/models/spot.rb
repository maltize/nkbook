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
  validates_inclusion_of :position, :in => 0..999
  validate :is_uniq_spot, :on => :create

  before_create :set_interval

  named_scope :valid, lambda { { :conditions => ["valid_from <= ? AND valid_to > ?", Time.now, Time.now], :joins => :profile } }
  named_scope :with_url, lambda { |url| { :conditions => ["profiles.url = ?", url], :joins => :profile } }

private

  def set_interval
    self.valid_from = Time.now
    self.valid_to = duration.days.from_now
  end

  def is_uniq_spot
    errors.add_to_base("To miejsce jest już zajęte!") if Spot.valid.find_by_position(position)
  end

end
