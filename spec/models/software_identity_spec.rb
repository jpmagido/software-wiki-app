require 'rails_helper'

RSpec.describe SoftwareIdentity, type: :model do
  let(:software_identity) { create(:software_identity)}

  it 'should create a valid instance of software_concept' do
    expect(software_identity).to be_valid
  end

  context "validations" do
    it { should validate_length_of(:name).is_at_least(1).is_at_most(50) }
    it { should validate_length_of(:description).is_at_least(1).is_at_most(1000) }
  end

  context "associations" do
    it { should have_many(:softwares) }
  end
end
