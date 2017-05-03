class BevsController < ApplicationController
  before_action :find_bev, only: [:show, :new, :edit, :update, :destroy]
  before_action :find_bev_lounge, only: [:show]
  before_action :bev_params, only: [:create]
  before_action :find_lounge, only: [:create]

  # def index
  # end

  def show
    @order = Order.new
    @zone = Zone.new
    @zone_op = @lounge.zones.all.map{|x| x.stall}
  end

  def new
  end

  def create
    @bev = Bev.new(bev_params)
    @bev.lounge = @lounge
    authorize @bev, :create?
    # ^ i think I need to authorize the @lounge here? `authorize(@lounge)` or `find_lounge` below
    # ^^ I only want the lounge owner or admin to create bevs
    @bev.save
    redirect_to lounge_path(@lounge)
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

  def find_bev
    @bev = Bev.find(params[:id])
    authorize @bev
    # ^ authorize(@bev)
  end

  def find_lounge
    # @lounge = Lounge.find(params[:lounge_id])
    # ^ standard way above
    @lounge = current_user.lounges.find(params[:lounge_id])
    # ^ the above should add a layer of security. ensuring that only the current user creates the bev.
  end

  def find_bev_lounge
    @lounge = Lounge.find(@bev.lounge_id)
  end

  def bev_params
    params.require(:bev).permit(:name, :desc, :cat, :region, :nation, :style, :cost)
  end
end
