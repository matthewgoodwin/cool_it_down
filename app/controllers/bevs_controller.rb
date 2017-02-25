class BevsController < ApplicationController
  before_action :find_bev, only: [:show, :new, :edit, :update, :destroy]
  before_action :bev_params, only: [:create]
  before_action :set_lounge

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
  end

  def bev_params
    params.require(:bev).permit(:name, :desc, :cat, :region, :nation, :style, :cost)
  end
  def set_lounge
    @lounge = Lounge.find(params[:lounge_id])
  end
end
