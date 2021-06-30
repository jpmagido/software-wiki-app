require 'rails_helper'

RSpec.describe Procedure, type: :model do
  let(:procedure) { create(:procedure) }

  it 'creates a valid instance of interaction' do
    expect(procedure).to be_valid
  end

  context "associations" do
    it { should belong_to(:interaction) }
  end

  context "validations" do
    it { should validate_length_of(:name).is_at_least(1).is_at_most(100) }
    it { should validate_length_of(:description).is_at_least(1).is_at_most(1000) }
    it { should validate_length_of(:actions).is_at_least(1).is_at_most(1000) }
  end
end
