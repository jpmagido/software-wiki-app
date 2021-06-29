require 'rails_helper'

RSpec.describe Interaction, type: :model do
  let(:interaction) { create(:interaction) }

  it 'creates a valid instance of interaction' do
    expect(interaction).to be_valid
  end

  describe "associations" do
    it { should belong_to(:user) }
  end
  
  describe "validations" do
    it { should validate_length_of(:title).is_at_least(1).is_at_most(100) }
    it { should validate_length_of(:description).is_at_least(1).is_at_most(1000) }
  end

  describe "name enum" do
    it "should be a valid name" do
      name = { to_create: 0, to_delete: 1, to_edit: 2, to_import: 3, to_export: 4 }
      name.each {|key, value| 
        expect(Interaction.names[key]).to eq value
      }
    end
  end
end
