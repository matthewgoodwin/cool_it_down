class Zone < ApplicationRecord
  belongs_to :lounge
  validates :stall, :seat, presence: true
  validates :stall, uniqueness: {scope: :seat, message: "this is a duplicate seat/stall combination"}
  validates :stall, length: { maximum: 2}
  validates :seat, length: { maximum: 2}
end
