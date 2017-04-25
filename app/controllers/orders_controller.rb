class OrdersController < ApplicationController
  before_action :find_order, only: [:show, :edit, :update, :destroy]
  before_action :find_bev, only: [:create]
  before_action :find_lounge, only: [:destroy]
  before_action :order_params, only:[:create]



  def show
  end

  def new
  end

  def create
    @order = Order.new(order_params)
    @order.user = current_user
    @order.lounge = @bev.lounge
    @order.bev_id = @bev.id
    authorize @order

    start_time = Time.now
    duration = @order.duration * 60
    end_time = start_time + duration

    if @order.save
      respond_to do |format|
        format.html { redirect_to lounge_path(@bev.lounge) }
        # ^ will render regular html format and redirect
        format.js
        # ^ will render 'app/views/orders/create.js.erb' .. 'create' comes from this controller method name.
        # ^^ 'orders/create.js.erb' has access to the @order created/saved in this controller method.

        # time and save order will be placed here!!!


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
    @order.destroy
    redirect_to lounge_path(@lounge)
    # ^ coming from the find_lounge before action
  end

  private

  def find_order
    @order = Order.find(params[:id])
    # raise
    authorize @order
  end
  def find_bev
    @bev = Bev.find(params[:bev_id])
  end

  def order_params
    params.require(:order).permit(:duration, :quantity, :zone)
  end

  def find_lounge
    @lounge = @order.lounge_id
  end

end
