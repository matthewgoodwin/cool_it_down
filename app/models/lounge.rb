class Lounge < ApplicationRecord
  belongs_to :user
  has_many :orders, dependent: :destroy
  has_many :bevs, dependent: :destroy
  validates :name, :cat, :desc, :city, presence: true
  validates :name, uniqueness: {scope: :city, message: "this lounge name and city already exists!"}
  # ^ should change this to address, not city
end
