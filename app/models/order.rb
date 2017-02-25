class Order < ApplicationRecord
  belongs_to :user
  belongs_to :lounge
  has_many :bevs
  # ^ do I need the above?
  validates :duration, :quantity, :zone, presence: true
end
