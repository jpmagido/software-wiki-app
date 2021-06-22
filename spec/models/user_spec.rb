require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user) { create(:user)}

  it 'creates a valid instance of user' do
    expect(user).to be_valid
  end
end
