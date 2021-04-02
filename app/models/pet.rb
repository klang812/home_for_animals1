class Pet < ApplicationRecord

  belongs_to :Shelter

  validates :name, :breed, :animal_type, {
    presence :true
  }
end