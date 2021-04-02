require 'rails_helper'

describe Shelter do

  describe 'associations' do
    it{ should have_many(:pets) }
  end

  describe 'validations' do
    it { should validate_presence_of(:location) }
  end
end