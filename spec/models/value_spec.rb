require 'rails_helper'

RSpec.describe Value, type: :model do
  let(:value) { create(:value) }

  it 'creates a valid instance of Value' do
    expect(value).to be_valid
  end

  context 'Associations' do
    it { belong_to(:property) }
  end

  context 'Validations' do
    it { validate_length_of(:text).is_at_least(3).is_at_most(50) }
    it { validate_length_of(:description).is_at_least(1).is_at_most(1000) }
  end
end
