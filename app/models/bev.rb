class Bev < ApplicationRecord
  belongs_to :lounge, dependent: :destroy
  validates :name, :desc, presence: true
  validates :name, uniqueness: { scope: :desc}
end
