class Kondo < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy

  # has_one_attached :photo
  has_one_attached :image


  validates :title, presence: true, uniqueness: true, length: { in: 3..30 }
  validates :description, presence: true, length: { minimum: 20, maximum: 140 }
  validates :location, presence: true
  validates :picture, presence: false
end
