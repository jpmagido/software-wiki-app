require 'rails_helper'

RSpec.describe Property, type: :model do
  let(:property) { create(:property) }

  it 'should create a valid instance of Property' do
    expect(property).to be_valid
  end

  context "associations" do
    it { should belong_to(:concept) }
    it { should have_many(:interactions) }
    it { should have_many(:values) }
    it { should have_many(:relations_to) }
    it { should have_many(:relations_from) }
  end
  
  context "validations" do
    it { should validate_length_of(:name).is_at_least(1).is_at_most(50) }
    it { should validate_length_of(:description).is_at_least(1).is_at_most(500) }
  end
end
