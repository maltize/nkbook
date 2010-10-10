class HomeController < ApplicationController

  def index
    @spots = Hash[*Spot.all.collect { |u| [u.position, u] }.flatten]
  end

  def profile_parse
    @url = params[:url]
    @nk_id = @url.match(/\/(\d+)\//)[1]

    page = Mechanize.new.get @url

    nBody = Nokogiri::HTML(page.body)
    @photo_url = nBody.xpath("//a[@class = 'card_photo']/img").first.values.first

    file_path = Profile::STORE_PATH + @nk_id + '.jpg'
    Dir.mkdir(Profile::STORE_PATH) unless File.directory?(Profile::STORE_PATH)
    unless File.exists?(file_path)
      image = Mechanize.new.get_file @photo_url
      open(file_path, "wb") do |file|
        file.write(image)
      end
    end

    ImageScience.with_image(file_path) do |img|
      img.cropped_thumbnail(39) do |thumb|
        thumb.save Profile::STORE_PATH + @nk_id + '_cropped.png'
      end

      img.thumbnail(39) do |thumb|
        thumb.save Profile::STORE_PATH + @nk_id + '_thumb.png'
      end
    end
  end

end
