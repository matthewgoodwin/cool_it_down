class LoungesController < ApplicationController
  before_action :find_lounge, only: [:show, :receipts ,:edit, :update, :destroy]
  before_action :lounge_params, only: [:create]
  def index
    @lounges = Lounge.all
    authorize @lounges
  end

  def receipts
  end

  def show
    @order = Order.new
    @bev = Bev.new
  end

  def new
    @lounge = Lounge.new
    @bev = Bev.new
  end

  def create
    @lounge = Lounge.new(lounge_params)
    @lounge.user = current_user
    @lounge.save
      redirect_to lounge_path(@lounge)

  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def find_lounge
    @lounge = Lounge.find(params[:id])
  end

  def lounge_params
    params.require(:lounge).permit(:name, :address, :city, :cat, :desc, :phone, :manager, :branch)
  end
end
