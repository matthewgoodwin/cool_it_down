class Bev < ApplicationRecord
  belongs_to :lounge
  has_many :orders
  validates :name, :desc, presence: true
  validates :name, uniqueness: { scope: :desc}
end
