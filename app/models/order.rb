class Order < ApplicationRecord
  belongs_to :user
  belongs_to :lounge
  has_many :bevs
end
