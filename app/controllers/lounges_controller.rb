class LoungesController < ApplicationController
  before_action :find_lounge, only: [:show, :create, :edit, :update, :destroy]
  def index
    @lounges = Lounge.all
  end

  def show
    @order = Order.new
  end

  def new
    @lounge = Lounge.new
  end

  def create
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
end
