class Kondo < ApplicationRecord
  belongs_to :user
  has_many :favorites, dependent: :destroy

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

  has_one_attached :image

  validates :title, presence: true, uniqueness: true, length: { in: 3..30 }
  validates :description, presence: true, length: { minimum: 20, maximum: 140 }
  validates :location, presence: true
  validates :picture, presence: false
end
