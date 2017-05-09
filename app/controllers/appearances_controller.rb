class AppearancesController < ApplicationController

  def index

  end

  def new
    @appearance = Appearance.new
  end

  def create
    @appearance = Appearance.new(appearance_params)
    if @appearance.save
      redirect_to appearance.guest
    else
      render :new
    end
  end

  def show
    @appearance = Appearance.find(params[:id])
  end

  private

  def appearance_params
    params.require(:appearance).permit(:episode_id, :guest_id, :rating)
  end
end
