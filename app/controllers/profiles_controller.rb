class ProfilesController < ApplicationController

  include CacheableFlash

  caches_page :index

  def index
    @spots = Hash[*Spot.valid.collect { |u| [u.position, u] }.flatten]
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(params[:profile])
    @profile.spot = Spot.new(:duration => 30, :position => params[:spot_position])

    if @profile.save
      flash[:notice] = "<p>Twoja wizytówka została dodana</p>"
      expire_page "/index"
      redirect_to root_path
    else
      p @profile.errors
      render :action => "new"
    end
  end

end
