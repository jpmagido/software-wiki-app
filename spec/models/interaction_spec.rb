require 'rails_helper'

RSpec.describe Interaction, type: :model do
  let(:interaction) { create(:interaction) }

  it 'creates a valid instance of interaction' do
    expect(interaction).to be_valid
  end
end
