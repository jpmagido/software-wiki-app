require 'rails_helper'

RSpec.describe Software, type: :model do
  let(:software) { create(:software) }

  it 'should create a valid instance of Software' do
    expect(software).to be_valid
  end
end
