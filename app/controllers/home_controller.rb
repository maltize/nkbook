class HomeController < ApplicationController

  def index
  end

  def profile
    @url = params[:url]
    @nk_id = @url.match(/\/(\d+)\//)[1]

    page = Mechanize.new.get @url

    nBody = Nokogiri::HTML(page.body)
    @photo_url = nBody.xpath("//a[@class = 'card_photo']/img").first.values.first
  end

end
