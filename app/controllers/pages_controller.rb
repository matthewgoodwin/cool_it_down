class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]
  def home
  end

  def search
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

end
