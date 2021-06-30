require 'rails_helper'

RSpec.describe Software, type: :model do
  let(:software) { create(:software) }
  
  it 'should create a valid instance of Software' do
    expect(software).to be_valid
  end
  
  context "associations" do
    it { should have_many(:software_concepts) }
    it { should have_many(:concepts) }
  end
  
  context "validations" do
    it { should validate_length_of(:name).is_at_least(1).is_at_most(50) }
    it { should validate_length_of(:description).is_at_least(1).is_at_most(1000) }
  end
  
  context "scopes" do
    describe "online" do
      it "includes sftwares that are online" do
        software = FactoryBot.create(:software, online: true)
        expect(described_class.online).to include(software)
      end
      it "excludes sftwares that are not online" do
        software = FactoryBot.create(:software, online: false)
        expect(described_class.online).not_to include(software)
      end
    end
  end
end
