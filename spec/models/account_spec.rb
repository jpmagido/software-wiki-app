require 'rails_helper'

RSpec.describe Account, type: :model do
  let(:account) { create(:account) }

  it 'creates a valid account' do
    expect(account).to be_valid
  end

  describe 'uniqueness validation' do
    let!(:account) { create(:account) }
    it 'raises ' do
      expect { create(:account) }.to raise_error(ActiveRecord::RecordNotUnique)
    end
  end
end
