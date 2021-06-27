require 'rails_helper'

RSpec.describe Concept, type: :model do
  let(:concept) { create(:concept) }

  it 'should create a valid instance of Concept' do
    expect(concept).to be_valid
  end
end
