class OrdersController < ApplicationController
  before_action :set_order, only: [:show, :edit, :update, :destroy]
  before_action :set_bev, only: [:create]
  before_action :set_lounge, only:[:index]
  before_action :order_params, only:[:create]

  def index
    @orders = @lounge.orders
  end

  def show
  end

  def new
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    @order.lounge = @bev.lounge
    @order.bev_id = @bev.id

    if @order.save
      respond_to do |format|
        format.html { redirect_to lounge_path(@bev.lounge) }
        # ^ will render regular html format and redirect
        format.js
        # ^ will render 'app/views/orders/create.js.erb' .. 'create' comes from this controller method name.
        # ^^ 'orders/create.js.erb' has access to the @order created/saved in this controller method.
    end
    else
      respond_to do |format|
        format.html { render 'lounges/show'}
        format.js #<-- idem
      end
    end


  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def set_order
    @order = Order.find(params[:id])
  end
  def set_bev
    @bev = Bev.find(params[:bev_id])
  end

  def order_params
    params.require(:order).permit(:duration, :quantity, :zone)
  end

  def set_lounge

  end
end
