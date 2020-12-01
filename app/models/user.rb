class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :kondos, dependent: :destroy
  has_many :favorites, dependent: :destroy
  has_many :messages, dependent: :destroy
  has_many :chatrooms, dependent: :destroy

  validates :username, presence: false, uniqueness: true
  validates :first_name, presence: false
  validates :last_name, presence: false

  def favorite?(kondo)
    favorites.include?(Favorite.find_by(kondo: kondo))
  end

  def owner?(kondo)
    kondo.user == self
  end
end
