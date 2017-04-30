class LoungesController < ApplicationController
  before_action :find_lounge, only: [:show, :receipts ,:edit, :update, :destroy]
  before_action :lounge_params, only: [:create]

  # before_action :lname_lcity, only: [:index]

  def index
    @lounges = policy_scope(Lounge)
    # authorize @lounges
    # authorize looks for a policy on the class Lounge(looking for a Lounge policy)
    # Lounge class then calls the method, appending a ? i.e. `show?`
    # If there is no `show` in the `LoungePolicy`, it will revert to parent `ApplicationPolicy` which returns false, by default
    # so override of the default policy is required

    if params[:search]
      @lounges = policy_scope(Lounge.search_by_name_or_city(params[:search]))
      # @lounges = Lounge.search_by_name_or_city(lname_lcity)
    else
      @lounges = policy_scope(Lounge)
    end
    # raise
  end

  def receipts
    # @lounge_receipts = @lounge.orders.all.map.sort_by{|o| o.created_at}
    # this works here, but not at the view level

    @lounge_receipts = @lounge.orders.all.map.sort_by{|o| o.created_at}.reverse!

    # a.sort_by { |h| h[:bar] }.reverse!
    # a.sort{|a,b| b[:bar] <=> a[:bar]}
  end

  def show
    @order = Order.new
    @bev = Bev.new
    @zone = Zone.new
    authorize @bev
    @zone_op = @lounge.zones.all.map{|x| x.stall}
    # ^ check the ReadMe file april 29th.. Should this be in a helper/module/model?
    @lounge_receipts = @lounge.orders.all.map.sort_by{|o| o.created_at}.reverse!
    # april 30th

  end

  def new
    @lounge = Lounge.new
    # @bev = Bev.new
    authorize @lounge
    # authorize @bev
  end

  def create
    @lounge = Lounge.new(lounge_params)
    @lounge.user = current_user
    authorize @lounge # authorize lounge then save
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
    authorize @lounge
  end

  def lounge_params
    params.require(:lounge).permit(:name, :address, :city, :cat, :desc, :phone, :manager, :branch)
  end

  # def lname_lcity
  #     params.require(:lounges).permit(:search)
  # end

end
