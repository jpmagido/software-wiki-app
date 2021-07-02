require 'rails_helper'

RSpec.describe "Roles", type: :request do
  let!(:role) { create(:role) }

  describe "GET /index" do
    it "returns http success" do
      get roles_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get role_path role.id
      expect(response).to have_http_status(:success)
    end
  end
end
