require 'rails_helper'

RSpec.describe "Softwares", type: :request do
  describe "GET /index" do
    it "returns http success" do
      get "/softwares/index"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /new" do
    it "returns http success" do
      get "/softwares/new"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /show" do
    it "returns http success" do
      get "/softwares/show"
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET /edit" do
    it "returns http success" do
      get "/softwares/edit"
      expect(response).to have_http_status(:success)
    end
  end

end
