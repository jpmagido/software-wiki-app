require 'rails_helper'

RSpec.describe "Accounts", type: :request do
  let!(:account) { create(:account) }

  describe "GET /show" do
    it "returns http success" do
      get admin_account_path account
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get edit_admin_account_path account
      expect(response).to have_http_status(:success)
    end
  end
end
