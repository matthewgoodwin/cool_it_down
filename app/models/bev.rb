class Bev < ApplicationRecord
  belongs_to :lounge
  has_many :orders, dependent: :destroy
  validates :name, :desc, :style, :cost, presence: true
  # validates :name, uniqueness: { scope: :desc}
  # ^ restricted to user or db
end
