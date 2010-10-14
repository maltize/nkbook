class ProfilesController < ApplicationController

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
    @profile.spot = Spot.new(:duration => 7, :position => params[:spot_position])

    if @profile.save
      flash[:notice] = 'Twoja wizytówka została dodana'
      expire_page :action => :index 
      redirect_to root_path
    else
      render :action => "new"
    end
  end

end
