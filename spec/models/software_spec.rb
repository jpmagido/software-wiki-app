require 'rails_helper'

RSpec.describe Software, type: :model do
  let(:software) { build(:software) }

  it 'should create a valid instance of Software' do
    expect(software).to be_valid
  end

  context "associations" do
    it { should have_many(:software_concepts) }
    it { should have_many(:concepts) }
    it { should belong_to(:software_identity) }
  end

  context "validations" do
    let(:software_duplicated_version) { create(:software, version: software.version, software_identity: software.software_identity) }
    let(:invalid_version_format_software) { create(:software, version: invalid_format) }
    let(:invalid_format) { %w[A89A S.10 1.20.X 10,10 10_10 1-20 1/10].sample }

    it "raises an error if version is duplicated" do
      software.save!

      expect { software_duplicated_version }.to raise_error(ActiveRecord::RecordInvalid)
    end

    it 'accepts only Digits and dots (0-9) & . ' do
      expect { invalid_version_format_software }.to raise_error(ActiveRecord::RecordInvalid)
    end
  end

  describe '.update' do
    it 'raises not' do
      expect { create(:software).update!(online: false) }.not_to raise_error
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
