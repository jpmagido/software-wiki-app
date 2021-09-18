require 'rails_helper'

RSpec.describe Software, type: :model do
  let(:software) { create(:software) }

  it 'should create a valid instance of Software' do
    expect(software).to be_valid
  end

  context "associations" do
    it { should have_many(:software_concepts) }
    it { should have_many(:concepts) }
    it { should belong_to(:software_identity) }
  end

  context "validations" do
    let(:invalid_software) { create(:software, version: software.version, software_identity: software.software_identity) }

    it "should raise an error if version is duplicated" do
      expect{ invalid_software }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  describe ".online" do
    let(:online_software) { create(:software, online: true) }
    let(:offline_software) { create(:software, online: false) }

    it "includes softwares that are online" do
      expect(described_class.online).to include(online_software)
    end
    it "excludes softwares that are not online" do
      expect(described_class.online).not_to include(offline_software)
    end
  end
end
