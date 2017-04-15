class ZonesController < ApplicationController
  before_action :find_lounge, only: [:create]
  before_action :zone_params, only: [:create]
  before_action :find_zone, only: [:destroy]

  def create
    @zone = Zone.new(:zone_params)
    @zone.lounge = @lounge
    authorize @zone, :create?
    @zone.save
    redirect_to lounge_path(@lounge)
  end

  def destroy
  end

  private

  def find_lounge
    # @lounge = Lounge.find(params[:lounge_id)
    @lounge = current_user.lounges.find(params[:lounge_id])
    # ^ more secure
  end

  def zone_params
    params.require(:zone).permit(:stall, :seat)
  end

  def find_zone
    @zone = Zone.find(params[:id])
    authorize @zone
  end
end
