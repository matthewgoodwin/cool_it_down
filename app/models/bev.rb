class Bev < ApplicationRecord
  belongs_to :lounge, dependent: :destroy
  has_many :orders
  validates :name, :desc, presence: true
  validates :name, uniqueness: { scope: :desc}
end
