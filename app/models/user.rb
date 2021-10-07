class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable

  validates :email, format: { with: /\b[A-Z0-9._%a-z\-]+@thinkific\.com\z/, message: "must be a @thinkific.com account" }
end
