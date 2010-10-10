class ProfilesController < ApplicationController

  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
  end

  def new
    @profile = Profile.new
  end

  def create
    @profile = Profile.new(params[:profile])
    @spot = Spot.new(:duration => 7, :position => params[:spot_position])

    if @spot.valid? && @profile.save
      @spot.profile = @profile
      @spot.save
      flash[:notice] = 'Profile was successfully created.'
      redirect_to root_path
    else
      render :action => "new"
    end
  end

end
