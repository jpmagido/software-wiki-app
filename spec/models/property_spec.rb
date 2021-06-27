require 'rails_helper'

RSpec.describe Property, type: :model do
  describe "associations" do
    it { should belong_to(:concept) }
    it { should have_many(:interactions) }
  end
  
  describe "validations" do
    it { should validate_length_of(:name).is_at_least(1).is_at_most(50) }
    it { should validate_length_of(:description).is_at_least(1).is_at_most(500) }
  end
end
