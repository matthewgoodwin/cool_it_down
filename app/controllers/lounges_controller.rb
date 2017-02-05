class LoungesController < ApplicationController
  before_action :find_lounge, only: [:show, :create, :edit, :update, :destroy]
  def index
  end

  def show
  end

  def new
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
