class Order < ApplicationRecord
  belongs_to :user
  belongs_to :lounge
  belongs_to :bev

  validates :duration, :quantity, :zone, presence: true
  validates :zone, length:{ maximum: 2}
end
