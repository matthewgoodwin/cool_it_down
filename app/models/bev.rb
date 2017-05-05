class Bev < ApplicationRecord
  belongs_to :lounge
  has_many :orders, dependent: :destroy
  validates :name, :desc, :style, :cost, presence: true
  validates :name, length: {maximum: 30, too_long: "%{count} characters is the maximum allowed"}
  # validates :name, uniqueness: { scope: :desc}
  # ^ restricted to user or db
end
