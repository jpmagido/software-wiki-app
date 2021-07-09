require 'rails_helper'

RSpec.describe "Versions", type: :request do
  let(:software) { create(:software)}
  let(:version) { create(:version, software: software)}

  describe "GET /index" do
    it "returns http success" do
      get software_versions_path software
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get new_software_version_path software
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get software_version_path software, version
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get edit_version_path version
      expect(response).to have_http_status(:success)
    end
  end
end
