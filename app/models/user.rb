class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  mount_uploader :photo, PhotoUploader
  # ^ inherits from PhotoUploader, a generic file: uploaders/photo_uploader.rb
  # ^ which contains `include Cloudinary::CarrierWave`

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  devise :omniauthable, omniauth_providers: [:facebook]
  has_many :lounges, dependent: :destroy
  has_many :orders, dependent: :destroy

  validates :first_name, :last_name, :email, presence: true
  validates :first_name, uniqueness: {scope: :email}

  # validates :username, :email, presence: true
  # validates :username, uniqueness: {scope: :email}
end
