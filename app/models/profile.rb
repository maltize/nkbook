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

class Profile < ActiveRecord::Base

  validates_presence_of :url, :html, :email, :tos
  validates_format_of :email, :with => /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\Z/i
  validates_format_of :url,   :with => /http:\/\/nk\.pl\/card\/\d+\/\w+/i
  validates_format_of :html,  :with => /<script.+src=.+http:\/\/nk\.pl\/card\/js\/\d+\/\w+.+><\/script>/i
  validate :three_per_user, :on => :create

  has_one :spot, :dependent => :destroy

  after_create :harvester

  STORE_PATH = RAILS_ROOT + '/public/assets/'
  READ_PATH = '/assets/'

  def thumbnail_path
    READ_PATH + nk_id + '_cropped.png'
  end

private

  def harvester
    self.nk_id = url.match(/\/(\d+)\//)[1]
    self.save

    page = Mechanize.new.get url
    nBody = Nokogiri::HTML(page.body)
    photo_url = nBody.xpath("//a[@class = 'card_photo']/img").first.values.first
    if (element = nBody.xpath("//li[@id = 'card_nick']/span").first)
      self.login = element.children.last.inner_text.strip
      self.save
    end

    file_path = STORE_PATH + nk_id + '.jpg'
    Dir.mkdir(STORE_PATH) unless File.directory?(STORE_PATH)
    unless File.exists?(file_path)
      image = Mechanize.new.get_file photo_url
      open(file_path, "wb") do |file|
        file.write(image)
      end
    end

    ImageScience.with_image(file_path) do |img|
      img.cropped_thumbnail(39) do |thumb|
        thumb.save STORE_PATH + nk_id + '_cropped.png'
      end
    end
  end

  def three_per_user
    errors.add_to_base("Można posiadać tylko 3 aktywne miejsca!") if Spot.valid.with_url(url).count == 3
  end

end
