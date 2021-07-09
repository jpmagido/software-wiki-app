require 'rails_helper'

RSpec.describe Software, type: :model do
  let(:software) { create(:software) }
  let(:version) { create(:version, software: software) }
  
  it 'should create a valid instance of Software' do
    expect(software).to be_valid
  end
  
  context "associations" do
    it { should have_many(:versions) }
  end
  
  context "validations" do
    it { should validate_length_of(:name).is_at_least(1).is_at_most(50) }
    it { should validate_length_of(:description).is_at_least(1).is_at_most(1000) }
  end

  context "scopes" do
    describe "#having_online_versions" do
      it "should include softwares that has online_versions" do
        version.update(online: true)
        expect(described_class.having_online_versions).to include(software) 
      end
      it "should exclude software that don't have online_versions" do
        version.update(online: false)
        expect(described_class.having_online_versions).not_to include(software) 
      end
    end
  end
  
  context "public instance methods" do
    describe "#online_versions" do
      it "should include versions that are online" do
        version.update(online: true)
        expect(software.online_versions).to include(version)        
      end
      it "should exclude versions that aren't online" do
        version.update(online: false)
        expect(software.online_versions).not_to include(version)        
      end
    end
  end
end
