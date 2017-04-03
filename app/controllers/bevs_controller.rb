class BevsController < ApplicationController
  before_action :find_bev, only: [:show, :new, :edit, :update, :destroy]
  before_action :bev_params, only: [:create]
  before_action :set_lounge, only: [:create]

  def index
  end

  def show
    @order = Order.new
  end

  def new
  end

  def create
    @bev = Bev.new(bev_params)
    @bev.lounge = @lounge
    authorize @bev
    # ^ i think I need to authorize the @lounge here? `authorize(@lounge)` or `set_lounge` below
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

  def set_lounge
    @lounge = Lounge.find(params[:lounge_id])
    authorize @lounge
    # ^ authorize(@lounge)
  end

  def bev_params
    params.require(:bev).permit(:name, :desc, :cat, :region, :nation, :style, :cost)
  end
end
