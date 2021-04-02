class Shelter < ApplicationRecord

  has_many :pets, dependent: :destroy

  validates :location, presence: true
end