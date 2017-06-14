class Order < ApplicationRecord
  # include Countdown

  belongs_to :user
  belongs_to :lounge
  belongs_to :bev

  validates :duration, :quantity, :zone, presence: true
  validates :zone, length:{ maximum: 2}

  # def basic_timer
  #   st = Time.now # current time stamp
  #   int = @order.duration * 60 # intervals in minutes (x * 60secs)
  #   et = st + int # end time: current time + inter
  # end

end
