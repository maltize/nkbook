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

  # TODO validate widget url

  validates_presence_of :url, :email, :tos

  has_one :spot, :dependent => :destroy

  after_create :harvester

  STORE_PATH = RAILS_ROOT + '/public/assets/'
  READ_PATH = '/assets/'

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

  def thumbnail_path
    READ_PATH + nk_id + '_cropped.png'
  end

end
