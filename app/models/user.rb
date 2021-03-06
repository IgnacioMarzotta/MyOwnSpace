class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  #devise :omniauthable, omniauth_providers: [:facebook, :twitter, :google]
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :notes
  has_many :infos
  has_many :events
  validates :username, length: {maximum: 10}
end
