class Lounge < ApplicationRecord
  belongs_to :user
  has_many :orders
  validates :name, :cat, :desc, :city, presence: true
end
