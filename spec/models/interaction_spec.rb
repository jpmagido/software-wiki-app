require 'rails_helper'

RSpec.describe Interaction, type: :model do
  let(:interaction) { create(:interaction) }
  
  it 'creates a valid instance of interaction' do
    expect(interaction).to be_valid
  end
  
  context "associations" do
    it { should belong_to(:role) }
    it { should belong_to(:target) }
  end
  
  context "validations" do
    it { should validate_length_of(:title).is_at_least(1).is_at_most(100) }
    it { should validate_length_of(:description).is_at_least(1).is_at_most(1000) }
  end
  
  context "enums" do
    describe "name" do
      it { should define_enum_for(:name).with_values(to_create: 0, to_delete: 1, to_edit: 2, to_import: 3, to_export: 4) }
    end
  end
end
