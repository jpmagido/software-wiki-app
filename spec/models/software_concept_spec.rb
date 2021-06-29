require 'rails_helper'

RSpec.describe SoftwareConcept, type: :model do
  let(:software_concept) { create(:software_concept) }

  it 'should create a valid instance of software_concept' do
    expect(software_concept).to be_valid
  end

  describe "associations" do
    it { should belong_to(:concept) }
    it { should belong_to(:software) }
  end
end
