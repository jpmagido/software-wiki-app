require 'rails_helper'

RSpec.describe "Softwares", type: :request do
  let!(:software) { create(:software) }

  describe "GET /index" do
    it "returns http success" do
      get softwares_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get new_software_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get software_path software
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get edit_software_path software
      expect(response).to have_http_status(:success)
    end
  end
end
