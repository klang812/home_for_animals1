class Pet < ApplicationRecord

  belongs_to :shelter

  validates :name, :breed, :animal_type, {
    presence: true
  }
end