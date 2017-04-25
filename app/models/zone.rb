class Zone < ApplicationRecord
  belongs_to :lounge
  validates :stall, :seat, presence: true
  validates :stall, length: { maximum: 2}
  validates :seat, length: { maximum: 2}
end
