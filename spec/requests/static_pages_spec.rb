require 'rails_helper'

RSpec.describe "StaticPages", type: :request do
  describe "GET /home" do
    it "returns http success" do
      get static_pages_home_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /landing" do
    it "returns http success" do
      get static_pages_landing_path
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /contact" do
    it "returns http success" do
      get static_pages_contact_path
      expect(response).to have_http_status(:success)
    end
  end

end
