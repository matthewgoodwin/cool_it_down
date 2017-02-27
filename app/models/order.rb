class Order < ApplicationRecord
  belongs_to :user
  belongs_to :lounge
  belongs_to :bev

  validates :duration, :quantity, :zone, presence: true
end
