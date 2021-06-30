require 'rails_helper'

RSpec.describe Prodecure, type: :model do
  let(:procedure) { create(:prodecure) }

  it 'creates a valid instance of interaction' do
    expect(procedure).to be_valid
  end

  context "associations" do
    it { should belong_to(:interaction) }
  end
end
