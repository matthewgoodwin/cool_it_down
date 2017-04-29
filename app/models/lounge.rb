class Lounge < ApplicationRecord
  include PgSearch
  pg_search_scope :search_by_name_or_city, against: [[:name, 'A' ], [:city, 'B']]

  belongs_to :user
  has_many :orders, dependent: :destroy
  has_many :bevs, dependent: :destroy
  has_many :zones, dependent: :destroy
  validates :name, :cat, :desc, :address, :city, :manager, :phone, :branch, presence: true
  validates :name, uniqueness: {scope: :branch, message: "this lounge and branch already exists!"}
  # ^ should change this to address, not city
  accepts_nested_attributes_for :zones
  # LOUNGE_ZONE = @lounge.zones.stall
end
