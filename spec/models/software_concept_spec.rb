require 'rails_helper'

RSpec.describe VersionConcept, type: :model do
  let(:version_concept) { create(:version_concept) }

  it 'should create a valid instance of version_concept' do
    expect(version_concept).to be_valid
  end

  context "associations" do
    it { should belong_to(:concept) }
    it { should belong_to(:version) }
  end
end
