require 'rails_helper'

describe Pet do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:animal_type) }
    it { should validate_presence_of(:breed) }
  end

  describe 'associations' do
    it { should belong_to(:shelter) }
  end

end