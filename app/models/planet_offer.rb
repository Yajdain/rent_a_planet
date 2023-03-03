class PlanetOffer < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  validates :name, presence: true
  validates :price, presence: true
  validates :title, presence: true
  validates :location, presence: true
  validates :gravite, presence: true
  validates :superficie, presence: true
  validates :rayon, presence: true
  validates :photo, presence: true
end
