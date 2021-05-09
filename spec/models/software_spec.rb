require 'rails_helper'

RSpec.describe Software, type: :model do
  it 'should create a valid instance of Software' do
    #expect(software).to be_valid
    expect(Software.create(name: 'bonjour')).to be_valid
  end
end
