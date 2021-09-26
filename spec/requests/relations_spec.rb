require 'rails_helper'

RSpec.describe 'Relations', type: :request do
  let!(:relation) { create(:relation) }

  describe 'GET /index' do
    it 'should return http_success' do
      get relations_path
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET /show' do
    it 'returns http_success' do
      get relation_path relation
      expect(response).to have_http_status(:success)
    end
  end
end
