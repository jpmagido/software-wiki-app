require 'rails_helper'

RSpec.describe Version, type: :model do
  let(:version) { create(:version) }
  
  it 'should create a valid instance of Software' do
    expect(version).to be_valid
  end
  
  context "associations" do
    it { should have_many(:version_concepts) }
    it { should have_many(:concepts) }
  end
  
  context "validations" do
    it { should validate_length_of(:name).is_at_least(1).is_at_most(10) }
    it { should validate_presence_of(:name) }
    subject { FactoryBot.build(:version) }
    it { should validate_uniqueness_of(:name) }
    it { should validate_length_of(:description).is_at_least(1).is_at_most(1000) }
  end

  context "public instance methods" do
    describe "full_name" do
      it "should return a string" do
        expect(version.full_name).to be_a(String)
      end
      it "should return the full name of version" do
        software = FactoryBot.create(:software, name: 'helpful software')
        version = FactoryBot.create(:version, name: 'v.1', software: software)
        expect(version.full_name).to eq('helpful software - v.1')
      end
    end
  end
end
