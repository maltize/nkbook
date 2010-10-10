class HomeController < ApplicationController

  def index
    @spots = Hash[*Spot.valid.collect { |u| [u.position, u] }.flatten]
  end

end
