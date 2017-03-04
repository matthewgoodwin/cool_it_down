class Lounge < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_many :bevs, dependent: :destroy
  validates :name, :cat, :desc, :city, presence: true
end
