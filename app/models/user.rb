class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :photo, PhotoUploader
  # ^ inherits from PhotoUploader, a generic file: uploaders/photo_uploader.rb
  # ^ which contains `include Cloudinary::CarrierWave`

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :lounges, dependent: :destroy
  has_many :orders, dependent: :destroy

  validates :username, :email, presence: true
  validates :username, uniqueness: {scope: :email}
end
