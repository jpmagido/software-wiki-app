require 'rails_helper'

RSpec.describe Value, type: :model do
  let (:value) { create(:value) }

  it 'should create a valid instance of Value' do
    expect(value).to be_a Value
  end

  context 'associations' do
    it { belong_to(:property) }
  end
end
