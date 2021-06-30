require 'rails_helper'

RSpec.describe Concept, type: :model do
  let(:concept) { create(:concept) }

  it 'should create a valid instance of Concept' do
    expect(concept).to be_valid
  end

  context "associations" do
    it { should have_many(:software_concepts) }
    it { should have_many(:softwares) }
    it { should have_many(:properties) }
    it { should have_many(:interactions) }
  end
  
  context "validations" do
    it { should validate_length_of(:name).is_at_least(3).is_at_most(50) }
    it { should validate_length_of(:short_text).is_at_least(1).is_at_most(1000) }
    it { should validate_length_of(:description).is_at_least(1).is_at_most(1000) }
  end
end
