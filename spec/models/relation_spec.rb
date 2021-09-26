require 'rails_helper'

RSpec.describe Relation, type: :model do
  let(:relation) { create(:relation) }

  it "should create a valid instance of Relation" do
    expect(relation).to be_valid
  end
  
  context "association" do
    it { should  belong_to(:from)}
    it { should  belong_to(:to)}
  end
end
