class User < ApplicationRecord
  has_one_attached :avatar, :dependent => :destroy
  devise :database_authenticatable, :registerable,
  :recoverable, :rememberable, :validatable

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :email, :presence => true, :uniqueness => true

end
