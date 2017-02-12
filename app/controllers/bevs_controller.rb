class BevsController < ApplicationController
  before_action :find_bev, only: [:show, :new, :create, :edit, :update, :destroy]
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

  def find
    @bev = Bev.find(params[:id])
  end

end
