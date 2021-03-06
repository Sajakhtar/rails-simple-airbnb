class Flat < ApplicationRecord
  validates :name, presence: true
  validates :address, presence: true
  validates :description, presence: true
  validates :price_per_night, presence: true, numericality: true
  validates :number_of_guests, presence: true, numericality: true
  validates :image_url, presence: true
end
