class Lounge < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :orders
  has_many :bevs, dependent: :destroy
  validates :name, :cat, :desc, :city, presence: true
end
