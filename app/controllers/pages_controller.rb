class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  # before_action :lname_lcity, only: [:search]
  def home
  end

  def search
    # if params[:search].present?
    #   @lounges = Lounge.search_by_name_or_city(params[:search])
    #   # @lounges = Lounge.search_by_name_or_city(lname_lcity)
    # else
    #   @lounges  = policy_scope(Lounge)
    # end
    # # raise
    # ^^ search can be found at the lounges#index
  end

  def shell
  end

  def about
  end

  def contact
  end

  def dashboard
    @lounge = Lounge.new
  end

  private

  #  def lname_lcity
  #     params.require(:pages).permit(:search)
  # end
end
