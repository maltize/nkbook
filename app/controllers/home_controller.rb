class HomeController < ApplicationController

  def index
    @spots = Hash[*Spot.all.collect { |u| [u.position, u] }.flatten]
  end

  def profile
    @url = params[:url]
    @nk_id = @url.match(/\/(\d+)\//)[1]

    page = Mechanize.new.get @url

    nBody = Nokogiri::HTML(page.body)
    @photo_url = nBody.xpath("//a[@class = 'card_photo']/img").first.values.first

    # file_path = RAILS_ROOT + '/public/assets/' + @nk_id + '.jpg'
    file_path = RAILS_ROOT + '/tmp/' + @nk_id + '.jpg'
    unless File.exists?(file_path)
      image = Mechanize.new.get_file @photo_url
      open(file_path, "wb") do |file|
        file.write(image)
      end
    end
  end

end
